#!/usr/bin/env Rscript

if (!"optparse" %in% installed.packages()) {
  install.packages("optparse")
}

library(optparse)

################################ Set up options ################################
# Set up optparse options
option_list <- list(
  make_option(
    opt_str = c("-p", "--packages"), type = "character",
    default = "github_package_list.tsv" ,
    help = "Path to a TSV with a list of packages to be installed through Github, 
    where file where the first column is the github package name e.g. 
    jhudsl/ottrpal and the second column is the commit ID to be installed 
    (to be supplied to the ref argument).
    ",
    metavar = "character"
  ),
  make_option(
    opt_str = c("--token"), type = "character",
    default = NULL,
    help = "GITHUB PAT file",
    metavar = "character"
  )
)

# Parse options
opt <- parse_args(OptionParser(option_list = option_list))

# Read in the token
token <- as.character(readLines(opt$token)[1])

# Reset GITHUB PAT to be token
Sys.unsetenv("GITHUB_PAT")
Sys.setenv(GITHUB_PAT = token)

# set up list of packages to install
packages <- readr::read_tsv(opt$packages, 
                                col_names = c("package_name", "ref"))

purrr::pmap(
  packages,
  ~remotes::install_github(..1,
                           auth_token = token,
                           ref = ..2)
                )

# Remove the file after we are done
file.remove(opt$token)
