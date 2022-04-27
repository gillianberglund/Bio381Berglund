####################################
# FUNCTION: summary_anova
# purpose: fit an ANOVA model
# input: ANOVA analysis (list)
# output: list with f ratio and p value 
#-----------------------------------
summary_anova <- function(anova) {
  z <- summary(anova)
  flat_out <- unlist(z)
  ano_stats <- list(f_ratio <- unlist(z)[7],
                    f_pval <- unlist(z)[9])
  
  print(ano_stats)
}
