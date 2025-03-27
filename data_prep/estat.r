source(".Rprofile")

library("arrow")
library("duckdb")
library("tidyverse")
library("duckplyr")
library("ggeffects")
library("marginaleffects")
library("modelsummary")
library("broom")
library("RColorBrewer")
library("viridis")
library("httpgd")
library("ggnewscale")
library("gt")
library("tikzDevice")
library("tinytable")
library("olsrr")
library("cowplot")
library("ggpattern")
library("glue")
library("scales")
library("mgcv")
library("ggplotify")

options(vsc.use_httpgd = TRUE)


# ---- clean data ----

# estat_raw <- readLines("data/d1000_estat/estat_nasa_10_pens1.tsv") %>%
#   str_replace_all(",+", " \t ")
# write_tsv(estat, "data/d1000_estat/estat.tsv")

# ---- load data ----
estat <- read_tsv("data/d1000_estat/estat.tsv")


estat_clean <- estat %>%
  mutate(
    # across(everything(), ~ case_match(.x, ":" ~ NA,  .default = .x))
    # across(everything(), ~ str_replace_all(.x, "[:alpha]|[:punct]", NA))
  ) %>%
  rename(
    "iso_country" = "geo\\TIME_PERIOD"
  ) %>%
  pivot_longer(
    !c(freq, unit, penscheme, na_item, iso_country),
    names_to = "year",
    values_to = "value",
    # names_ptypes = numeric()
  ) %>%
  mutate(
    year = as.numeric(year),
    value = as.numeric(str_replace_all(value, "[[:alpha:][:punct:]]*", "")),
  )


plot <- estat_clean %>%
  filter(na_item == "D62_P" & iso_country == "DE") %>%
  ggplot() +
  geom_line(
    aes(
      x = year,
      y = value,
      color = iso_country,
    )
  ) +
  geom_point(
    aes(
      x = year,
      y = value,
      color = iso_country,
    )
  )
