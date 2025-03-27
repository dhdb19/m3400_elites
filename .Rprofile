use_libraries <- function(...) {
    libs <- unlist(list(...))
    req <- unlist(lapply(libs, require, character.only = TRUE))
    need <- libs[req == FALSE]
    if (length(need) > 0) {
        install.packages(need)
        lapply(need, require, character.only = TRUE)
    }
    lapply(libs, library)
}


weidmann_theme <- function(...) {
    theme(
        panel.background = element_rect(fill = "white"),
        # panel.background = element_rect(fill = "#dbdbdb"),
        # panel.grid.major = element_line(color = "#9a9a9a", linewidth = 0.2),
        # panel.grid.minor = element_line(color = "#9a9a9a", linewidth = 0.2),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        # panel.grid.major = element_line(color = "#ffffff", linewidth = 0.2),
        # panel.grid.minor = element_line(color = "#ffffff", linewidth = 0.2),
        # plot
        plot.margin = margin(10, 20, 0, 10),
        plot.title = element_text(size = 8),
        # axis
        axis.title = element_text(size = 7),
        axis.title.y = element_text(margin = margin(t = 0, r = 10, l = 0, b = 0)),
        axis.text = element_text(size = 7),
        axis.line = element_line(color = "black", linewidth = 0.2),
        # legend
        legend.text = element_text(size = 7),
        legend.key.spacing.x = unit(1.5, "cm"),
        legend.title = element_blank(),
        legend.margin = margin(2, 10, 2, 2),
        legend.key.size = unit(0.6, "lines"),
        legend.key = element_rect(fill = NULL, color = "black", linewidth = 0.05),
        legend.key.spacing.y = unit(0.2, "lines"),
        # facets
        strip.text = element_text(size = 8),
        ...
    )
}


Sys.setlocale("LC_TIME", "English")
