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
library("svglite")

options(vsc.use_httpgd = TRUE)


# ---- clean data ----

# estat_raw <- readLines("data/d1000_estat/estat_nasa_10_pens1.tsv") %>%
#   str_replace_all(",+", " \t ")
# write_tsv(estat, "data/d1000_estat/estat.tsv")

# ---- load data ----
estat <- read_tsv("data/d1000_estat/estat.tsv")

oecd_filtered <- read_csv(
  "data/d2000_oecd/oecd_filtered.csv",
  col_types = "cccccccccccccccccccccccccccccccccc"
  # col_types ="ccccccccccccccccccccccdccccccccccc"
)
oecd_unfiltered <- read_csv("data/d2000_oecd/oecd_unfiltered.csv")

oecd_ratio <- read_csv("data/d2000_oecd/oecd_ratio.csv")

oecd_ratio_clean <- oecd_ratio %>%
  rename(
    "year" = "Category",
    "avg" = `OECD average (ratio)`,
    "min" = `OECD minimum`,
    "max" = `OECD maximum`
  ) %>%
  mutate(
    year = as.Date(year)
  )


oecd_filtered_clean <- oecd_filtered %>%
  select(
    c(
      TIME_PERIOD, REF_AREA, UNIT_MEASURE, EXPEND_SOURCE, OBS_VALUE, "Reference area"
    )
  ) %>%
  rename(
    "iso_country" = REF_AREA,
    "year" = TIME_PERIOD,
    "measure" = UNIT_MEASURE,
    "expend_type" = EXPEND_SOURCE,
    "country" = `Reference area`,
    "obs_value" = OBS_VALUE
  ) %>%
  mutate(
    obs_value = as.numeric(obs_value),
    new = is.na(obs_value),
    # obs_value = case_when(
    #   is.na(obs_value) ~ "0",
    # ),
    #   .default = obs_value
    # obs_value = na_if(obs_value, 0),
    measure = case_match(
      measure,
      "PT_B1GQ" ~ "perc_gdp",
      "PT_OTE_S13" ~ "perc_gov",
      .default = NA
    ),
    expend_type = case_match(
      expend_type,
      "ES10" ~ "public",
      "ES20_30" ~ "private",
    ),
    year = ymd(paste0(year, "-01-01"))
  )

write_csv(oecd_filtered_clean, "data/d2000_oecd/oecd_filtered_clean.csv")

# %>%
# pivot_wider(
#   names_from = measure,
#   values_from = obs_value,
#   values_fill = NA
# )

plot <- oecd_filtered_clean %>%
  filter(
    expend_type == "public",
    iso_country == "OECD",
    measure == "perc_gov",
    expend_type == "public"
  ) %>%
  ggplot() +
  geom_line(
    data = oecd_ratio_clean,
    aes(
      y = avg,
      x = year,
      color = "Old-age to working-age ratio",
      lty = "Old-age to working-age ratio"
    ),
  ) +
  geom_line(
    aes(
      y = obs_value,
      x = year,
      color = "Public pensions spending (% of gov't spending)",
      lty = "Public pensions spending (% of gov't spending)"
    ),
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "Public pensions spending (% of gov't spending)" = "#3C714F",
      "Old-age to working-age ratio" = "#6fa580"
    ),
    limits = c(
      "Public pensions spending (% of gov't spending)",
      "Old-age to working-age ratio"
    ),
  ) +
  scale_linetype_manual(
    name = "",
    values = c(
      "Public pensions spending (% of gov't spending)" = "solid",
      "Old-age to working-age ratio" = "dotted"
    ),
    limits = c(
      "Public pensions spending (% of gov't spending)",
      "Old-age to working-age ratio"
    ),
  ) +
  scale_y_continuous(
    name = "Percent",
    expand = expansion(add = 0),
    limits = c(0, 40),
  ) +
  scale_x_date(
    name = "Year",
    expand = expansion(add = 0),
    limits = c(as.Date("1950-01-01"), as.Date("2021-01-01"))
  ) +
  coord_cartesian(clip = "off") +
  weidmann_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.9),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
plot

ggsave(filename = "plot_pension_gov_ratio.svg", plot = plot, path = "figures/", height = 6, width = 16, units = "cm")

plot_oecd_gdp <- oecd_filtered_clean %>%
  filter(expend_type == "public") %>%
  ggplot() +
  geom_line(
    aes(
      x = year,
      y = perc_gdp,
      group = iso_country,
    )
  ) +
  geom_point(
    aes(
      x = year,
      y = perc_gdp,
      group = iso_country,
    )
  )
plot_oecd_gdp

eu <- c(
  "AUT", "BEL", "BGR", "HRV", "CYP", "CZE", "DNK", "EST", "FIN", "FRA",
  "DEU", "GRC", "HUN", "IRL", "ITA", "LVA", "LTU", "LUX", "MLT", "NLD",
  "POL", "PRT", "ROU", "SVK", "SVN", "ESP", "SWE"
)

cntry <- c(distinct(oecd_filtered_clean, country))

west <- c(
  "AUT", "BEL", "BGR", "HRV", "CYP", "CZE", "DNK", "EST", "FIN", "FRA",
  "DEU", "GRC", "HUN", "IRL", "ITA", "LVA", "LTU", "LUX", "MLT", "NLD",
  "POL", "PRT", "ROU", "SVK", "SVN", "ESP", "SWE", "USA", "CAN", "NZL", "CHE", "AUS", "NOR", "GBR", "ISL"
)

plot_oecd_gov <- oecd_filtered_clean %>%
  filter(
    expend_type == "public",
    iso_country %in% west,
    measure == "perc_gov",
    expend_type == "public"
  ) %>%
  ggplot() +
  geom_line(
    aes(
      x = year,
      y = obs_value,
      group = country,
      # color = country,
      # lty = country
    ),
    alpha = 0.1
  ) +
  geom_point(
    aes(
      x = year,
      y = obs_value,
      # color = country,
    ),
    alpha = 0.1
  ) +
  # scale_color_viridis(
  #   name = "Country",
  #   discrete = TRUE,
  #   option = "magma",
  # ) +
  # scale_linetype(
  #   name = "Country"
  # ) +
  geom_smooth(
    method = "lm",
    se = FALSE,
    aes(
      x = year,
      y = obs_value
    ),
    color = "#3C714F"
  ) +
  stat_smooth(
    aes(
      x = year,
      y = obs_value,
      ymin = pmax(after_stat(..ymin..), 0),
      ymax = pmax(after_stat(..ymax..), 0),
    ),
    method = "lm",
    level = 0.95,
    geom = "ribbon",
    fill = NA,
    alpha = 0.5,
    lty = "dashed",
    color = "#3C714F"
  ) +
  scale_y_continuous(
    name = "Pensions expenditure (% of gov't spending)",
    limits = c(0, NA),
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = "Year",
    expand = expansion(add = 0)
  ) +
  coord_cartesian(clip = "off") +
  weidmann_theme()
plot_oecd_gov


ggsave("plot_pension_gov.svg", plot = plot_oecd_gov, path = "figures/", height = 6, width = 16, units = "cm")


plot_oecd_gdp <- oecd_filtered_clean %>%
  filter(
    expend_type == "public",
    iso_country %in% west,
    measure == "perc_gdp",
    expend_type == "public"
  ) %>%
  ggplot() +
  geom_line(
    aes(
      x = year,
      y = obs_value,
      group = iso_country,
      color = iso_country
    ),
    alpha = 0.1
  ) +
  geom_point(
    aes(
      x = year,
      y = obs_value,
      color = iso_country,
    ),
    alpha = 0.1
  ) +
  scale_color_viridis(
    name = "Country",
    discrete = TRUE,
    option = "magma",
  ) +
  geom_smooth(
    method = "lm",
    se = FALSE,
    aes(
      x = year,
      y = obs_value
    ),
    color = "#3C714F"
  ) +
  stat_smooth(
    aes(
      x = year,
      y = obs_value,
      ymin = pmax(after_stat(..ymin..), 0),
      ymax = pmax(after_stat(..ymax..), 0),
    ),
    method = "lm",
    level = 0.95,
    geom = "ribbon",
    fill = NA,
    alpha = 0.5,
    lty = "dashed",
    color = "#3C714F"
  ) +
  scale_y_continuous(
    limits = c(0, NA)
  ) +
  weidmann_theme()
plot_oecd_gdp



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
