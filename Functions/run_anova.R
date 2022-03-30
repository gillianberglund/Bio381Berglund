####################################
# FUNCTION: run_anova
# purpose: fit an ANOVA model and
# input: dataframe with predictor and response variable 
# output: summary from ANOVA analysis
#-----------------------------------
run_anova <- function(dataframe=ano_data) {
  ano_model <- aov(proportions~trt_group,data=dataframe)
  z <- summary(ano_model)
  flat_out <- unlist(z)
  ano_stats <- list(f_ratio <- unlist(z)[7],
                    f_pval <- unlist(z)[9])

 print(summary(ano_model))
}
