x <- 3:10
n_dims <- sample(x, 1)
print(n_dims)

vector_consec <- seq(from=1, to =(n_dims)^2)

sample(x=vector_consec)

m <- matrix(data=vector_consec,nrow=5)
print(m)

tm <- t(m)
print(tm)

a <- matrix(1:30, 5, 6)
print(a)
ta <- t(a) ##-- i.e.,  a[i, j] == ta[j, i] for all i,j :


eigenm <- eigen(tm, only.values = FALSE, EISPACK = FALSE)
print(eigenm)

typeof(eigenm$values)
typeof(eigenm$vectors)

my_data <- runif(16)
my_matrix <- matrix(data=my_data,nrow=4)
print(my_matrix)

logical <- sample(0:100, 100, replace=TRUE)
print(logical)
my_logical <- logical<50
print(my_logical)

my_letters <- sample(letters, size=26)
print(my_letters)

my_list <- list(my_matrix[2,2],my_logical[2],my_letters[2])
print(my_list)

str(my_list)
typeof(my_list[[1]])
typeof(my_list[[2]])
typeof(my_list[[3]])

condensed_list <- c(my_list[[1]],my_list[[2]],my_list[[3]])
print(condensed_list)
typeof(condensed_list)


Problem
  
my_unis <- runif(n=26,min=1,max=10)
print(my_unis)  
  
my_letters <- sample(LETTERS, size=26)
print(my_letters)

dataFrame <- data.frame(my_unis,my_letters)
print(dataFrame)

dataFrame[sample(26, size = 4),1] <- NA
print(dataFrame)       

dataFrame[!complete.cases(dataFrame),]


# Homework 4:

odd <- c(seq(from = 1, to = 100))
integers <- which(odd%%2 != 0 & odd%%3 !=0 & odd%%7 !=0)

which(odd%%2 != 0 & odd%%3 !=0 & odd%%7 !=0)
which(odd%%3 !=0)
which(odd%%7 !=0)

integers <- c(which(odd%%7 !=0),which(odd%%3 !=0),which(odd%%2 != 0))
print(integers)

integers <- which(odd%%2 != 0 & odd%%3 !=0 & odd%%7 !=0)
