####################################
# FUNCTION: graph_anova - needs ggplot!
# purpose: graph anova model
# input: x and y numeric vectors of same length
# output: create ggplot graph
#-----------------------------------
graph_anova <- function(dataframe) {
  ano_plot <- ggplot(dataframe) +
    aes(x=trt_group,y=proportions) +
    geom_boxplot()
  
  print(ano_plot)
  # ggsave(filename = "reg_plot.pdf",
  #        plot = reg_plot,
  #        device = "pdf")
}



