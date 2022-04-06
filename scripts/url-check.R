#!/usr/bin/env Rscript

# Adapted for this jhudsl repository by Candace Savonen Mar 2022

# Summarize url checks

library(magrittr)

# Find .git root directory
root_dir <- rprojroot::find_root(rprojroot::has_dir(".git"))

ignore_urls_file <- file.path(root_dir, "resources", "ignore-urls.txt")

if (!file.exists(ignore_urls_file)) {
  message(paste("No ignore URLs text file found at:", ignore_urls_file, "downloading one from the main OTTR Template repo"))
  download.file("https://raw.githubusercontent.com/jhudsl/OTTR_Template/main/resources/ignore-urls.txt",
               destfile = ignore_urls_file)
}
ignore_urls <- readLines(ignore_urls_file)

output_file <- file.path(root_dir, 'check_reports', 'url_checks.tsv')

if (!dir.exists('check_reports')) {
  dir.create('check_reports')
}

# Only declare `.Rmd` files but not the ones in the style-sets directory
files <- list.files(path = root_dir, pattern = 'md$', full.names = TRUE)

test_url <- function(url) {
  message(paste0("Testing: ", url))
  url_status <- try(httr::GET(url), silent = TRUE)
  status <- ifelse(suppressMessages(grepl("Could not resolve host", url_status)), "failed", "success")
  return(status)
}

get_urls <- function(file) {
  # Read in a file and return the urls from it
  content <- readLines(file)
  content <- grep("http[s]?://", content, value = TRUE)
  url_pattern <- "http[s]?://.+?[\"|\\)| |,|\\}]"
  urls <- stringr::str_extract(content, url_pattern)
  urls <- urls[!is.na(urls)]
  if (length(urls) > 0 ){
    urls <- gsub("\\)$|\"|)$", "", urls)
    urls_status <- sapply(urls, test_url)
    url_df <- data.frame(urls, urls_status, file)
    return(url_df)
  }
}

# Run this for all Rmds
all_urls <- lapply(files, get_urls)

# Write the file
all_urls_df <- dplyr::bind_rows(all_urls) %>%
  dplyr::filter(!is.na(urls))

if (nrow(all_urls_df) > 0) {
  failed_urls_df <- all_urls_df %>%
    dplyr::filter(urls_status == "failed")
} else {
  failed_urls_df <- data.frame(errors = NA)
}

failed_urls_df <- failed_urls_df %>%
  dplyr::filter(!(urls %in% ignore_urls))

# Save spell errors to file temporarily
readr::write_tsv(failed_urls_df, output_file)

message(paste0("Saved to: ", output_file))

# Print out how many spell check errors
write(nrow(failed_urls_df), stdout())
