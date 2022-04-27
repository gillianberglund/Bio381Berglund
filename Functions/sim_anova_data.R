####################################
# FUNCTION: sim_anova_data
# purpose: read a CSV file
# input: csv file with path name
# output: data frame
#-----------------------------------

sim_anova_data <- function(groupnum=2, group1="control", group2="treatment", size1=45, size2=45, mean1=0.84, mean2=0.33, sd1=0.1, sd2=0.12) {
    n_group <- groupnum
    n_name <- c(group1,group2)
    n_size <- c(size1,size2)
    n_mean <- c(mean1,mean2)
    n_sd <- c(sd1,sd2)
    
    ID <- 1:sum(n_size)
    
    proportions <- c(rnorm(n=n_size[1],mean=n_mean[1],sd=n_sd[1]),
                     rnorm(n=n_size[2],mean=n_mean[2],sd=n_sd[2]))
    
    trt_group <- rep(n_name,n_size)
    
    ano_data <- data.frame(ID,trt_group,proportions)
    
    return(ano_data)
}
