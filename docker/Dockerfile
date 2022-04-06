FROM rocker/tidyverse:4.0.2
LABEL maintainer="cansav09@gmail.com"
WORKDIR /rocker-build/

COPY install_github.R .

# Install apt-getable packages to start
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils dialog
RUN apt-get install -y --no-install-recommends \
    libxt6 \
    libpoppler-cpp-dev \
    vim \
    libglpk40 \
    curl \
    gpg

# Install gh
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg;
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null;
RUN apt update && apt install -y gh;

# Remove old symlinks to old pandoc
RUN unlink /usr/lib/rstudio-server/bin/pandoc/pandoc

# Uninstall old version of pandoc
RUN sudo apt-get purge pandoc pandoc-citeproc pandoc-data \
  && sudo apt-get autoremove --purge

# Install pandoc
RUN wget https://github.com/jgm/pandoc/releases/download/2.14.1/pandoc-2.14.1-1-amd64.deb \
  && sudo apt-get install ./pandoc-2.14.1-1-amd64.deb

# Create new symlinks
RUN ln -s /usr/bin/pandoc /usr/lib/rstudio-server/bin/pandoc/pandoc

# Add curl, bzip2
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    bzip2 \
    curl

# Install pip3 and installation tools
RUN apt-get -y --no-install-recommends install \
    python3-pip  python3-dev

# Commonly used R packages
RUN Rscript -e  "options(warn = 2);install.packages( \
    c('bookdown', \
      'here', \
      'leanpubr', \
      'optparse', \
      'oro.nifti', \
      'qpdf', \
      'R.utils', \
      'rprojroot', \
      'rgoogleslides', \
      'servr', \
      'spelling', \
      'styler', \
      'reticulate'), \
      repos = 'https://cloud.r-project.org/')"

# cow needs this dependency:
RUN Rscript -e  "devtools::install_version('gitcreds', version = '0.1.1', repos = 'http://cran.us.r-project.org')"

# Didactr needs this dependency:
RUN Rscript -e  "devtools::install_version('lifecycle', version = '1.0.0', repos = 'http://cran.us.r-project.org')"

# Copy over git token and package list
COPY git_token.txt .
COPY github_package_list.tsv .

# Install packages from github
RUN Rscript install_github.R \
  --packages github_package_list.tsv \
  --token git_token.txt

# Set final workdir for commands
WORKDIR /home/rstudio
