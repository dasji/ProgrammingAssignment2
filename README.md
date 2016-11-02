# How to use the cachematrix.R script

### Save cachematrix.R file to the current working directory
source("cachematrix.R")

### Create a square matrix
sqMtx <- makeCacheMatrix( matrix(c(2,3,4,5), nrow = 2, ncol = 2) )

### Get the input matrix
a$getMatrix()

### First use of cacheSolve computes the inverse and caches the result
cacheSolve(a)

### Use cacheSolve function again to get cached data
cacheSolve(a)




