####################################
# FUNCTION: run_anova2
# purpose: fit an ANOVA model and
# input: dataframe with predictor and response variable 
# output: summary from ANOVA analysis
#-----------------------------------
run_anova <- function(ano_data) {
  ano_model <- aov(proportions~trt_group,data=ano_data)
  z <- summary(ano_model)
  flat_out <- unlist(z)
  ano_stats <- list(f_ratio <- unlist(z)[7],
                    f_pval <- unlist(z)[9])
  
  return(ano_model)
}
