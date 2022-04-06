#!/usr/bin/env Rscript

# This code was originally written by Josh Shapiro and Candace Savonen
# for the Childhood Cancer Data Lab an initiative of Alexs Lemonade Stand Foundation.
# https://github.com/AlexsLemonade/refinebio-examples/blob/33cdeff66d57f9fe8ee4fcb5156aea4ac2dce07f/.github/workflows/style-and-sp-check.yml#L1

# Adapted for this jhudsl repository by Candace Savonen Apr 2021

# Run spell check and save results

library(magrittr)

if (!("spelling" %in% installed.packages())){
  install.packages("spelling")
}
# Find .git root directory
root_dir <- rprojroot::find_root(rprojroot::has_dir(".git"))

# Set up output file directory
output_file <- file.path(root_dir, 'check_reports', 'spell_check_results.tsv')

if (!dir.exists('check_reports')) {
  dir.create('check_reports')
}

dictionary_file <- file.path(root_dir, 'resources', 'dictionary.txt')

if (!file.exists(dictionary_file)) {
  message(paste("No dictionary text file found at:", dictionary_file, "downloading one from the main OTTR Template repo"))
  download.file("https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/dictionary.txt",
                destfile = dictionary_file)
}

# Read in dictionary
dictionary <- readLines(dictionary_file)

# Only declare `.Rmd` files but not the ones in the style-sets directory
files <- list.files(pattern = 'Rmd$', recursive = TRUE, full.names = TRUE)

# Get quiz file names
quiz_files <- list.files(file.path(root_dir, "quizzes"), pattern = '\\.md$', full.names = TRUE)

# Put into one list
files <- c(files, quiz_files)

files <- grep("About.Rmd", files, ignore.case = TRUE, invert = TRUE, value = TRUE)
files <- grep("style-sets", files, ignore.case = TRUE, invert = TRUE, value = TRUE)

# Run spell check
sp_errors <- spelling::spell_check_files(files, ignore = dictionary)

if (nrow(sp_errors) > 0) {
  sp_errors <- sp_errors %>%
    data.frame() %>%
    tidyr::unnest(cols = found) %>%
    tidyr::separate(found, into = c("file", "lines"), sep = ":")
} else {
  sp_errors <- data.frame(errors = NA)
}

# Print out how many spell check errors
write(nrow(sp_errors), stdout())

# Save spell errors to file temporarily
readr::write_tsv(sp_errors, output_file)

message(paste0("Saved to: ", output_file))
