# Description
# This file parses the raw JSON version of the Lichess
# games DB into a cleaned rds for eda reading

# Author: Connor Quinn
# Version: 2020-01-29

# Libraries
library(tidyverse)
library(jsonlite)

# Parameters
json_path <- here::here("data-raw/games.json")

rds_path <- here::here("data/games.rds")

time_type_levels <- c("Bullet", "Blitz", "Classical", "Correspondence")

result_levels <- c("1-0", "1/2-1/2", "0-1")

#===============================================================================
# Json help from https://blog.exploratory.io/working-with-json-data-in-very-simple-way-ad7ebcc0bb89
raw_games <-
  fromJSON(json_path) %>%
  # Cleaning
  filter(white_elo != '?', black_elo != '?') %>%
  mutate(
    white_elo = as.integer(white_elo),
    black_elo = as.integer(black_elo),
    white_elo_diff = white_elo - black_elo,
    result = factor(result, levels = result_levels),
    time_type =
      factor(
        word(event, start = 2L),
        levels = time_type_levels
      )
  ) %>%
  write_rds(rds_path, compress = "gz")
