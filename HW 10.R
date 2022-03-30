# HW 10:
# Nested for loop ------ multiple for loops at same time
# create a sample matrix
mat <- matrix(sample(1:10, size = 9),
              nrow = 3,
              ncol = 3)

print(mat) 

# writing the for loop:
for(i in 1:nrow(mat)){
  for(j in 1:ncol(mat)){
    print(mat[i,j])
  }
}

  
# Putting custom functions in for loops ------------
# simulate temp data
site1 <- runif(min = 60, max = 70, n = 10)
site2 <- runif(min = 60, max = 70, n = 10)
site3 <- runif(min = 40, max = 50, n = 10)

# put them in a df
temps.df <- cbind(site1, site2, site3)
head(temps.df)

# custom function which converts to Celsius 

degf.to.degc <- function(x){
  degc <- (x-32)*(5/9)
  
  return(degc)
}
  
# repeat a function using a for loop:
for(i in 1:ncol(temps.df)){
  print(degf.to.degc(x = temps.df[,i]))
}
  
  
  
  
  
  
  
  
  