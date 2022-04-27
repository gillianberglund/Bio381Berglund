####################################
# FUNCTION: graph_anova - needs ggplot!
# purpose: graph anova model
# input: x and y numeric vectors of same length
# output: create ggplot graph
#-----------------------------------
graph_anova2 <- function(dataframe) {
  ano_plot <- ggplot(dataframe) +
    aes(x=trt_group,y=proportions) +
    geom_boxplot(fill="thistle",outlier.shape=NA) +
    geom_point(position=position_jitter(width=0.1, height=0.7),
               color="grey60",size=2)
  
  print(ano_plot)
}


