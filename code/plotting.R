library(rlang)
library(ggpubr)
plot_bar <- function(df, col_fill, name) {
  ggplot(df, aes(fct_reorder(gene_biotype, n, .fun = sum), n,
                 fill = .data[[col_fill]])) +
    geom_bar(position = position_dodge2(preserve = "single", width = 0.9), stat = "identity") +
    geom_text(aes(label = n, color = .data[[col_fill]]), hjust = -0.05,
              position = position_dodge2(preserve = "single", width = 0.9)) +
    scale_y_continuous(expand = expand_scale(mult = c(0, 0.15))) +
    scale_fill_discrete(name = name) +
    scale_color_discrete(name = name) +
    coord_flip() +
    theme(axis.title = element_blank(), legend.margin = margin(t = 14))
}

plot_bar_patch <- function(df, n_split, col_fill, name, title) {
  df <- df %>% 
    left_join(df %>% group_by(gene_biotype) %>% summarize(tot = sum(n)), by = "gene_biotype")
  df <- df %>% 
    mutate(bin = cut(tot, scales::breaks_log(n = n_split + 1)(range(df$tot))))
  dfs <- split(df, fct_rev(df$bin))
  plts <- map(dfs, plot_bar, col_fill = col_fill, name = name)
  hts <- rev(unname(table(df$bin)))
  hts <- hts + 8/min(hts)
  p <- ggarrange(plotlist = plts, ncol = 1, heights = hts,
                 common.legend = TRUE, legend = "top", align = "v")
  annotate_figure(p, fig.lab = title, fig.lab.pos = "top.left", fig.lab.size = 14)
}
