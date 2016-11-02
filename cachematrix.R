## Function makeCacheMatrix returns a list of four matrix functions
## Function cacheSolve computes the inverse and saves it in cache if not
## already computed

## Returns a list of four matrix functions

makeCacheMatrix <- function(x = matrix()) {
  # holds the cached value or NULL if nothing is cached
  # initially nothing is cached so set it to NULL
  cache <- NULL
  
  # store the matrix
  setMatrix <- function(newValue) {
    x <<- newValue
    # since the matrix is assigned a new value, clear the cache
    cache <<- NULL
  }
  
  # returns the stored matrix
  getMatrix <- function() {
    x
  }
  
  # cache the given argument 
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  
  # get the cached value
  getInverse <- function() {
    cache
  }
  
  # return a list of four functions
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Computes the inverse and saves it in cache if not already computed

cacheSolve <- function(x, ...) {
  # get the cached value
  inverse <- y$getInverse()
  # if a cached value exists return it
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  # otherwise get the matrix, caclulate the inverse and store it in
  # the cache
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  
  # return the inverse
  inverse
}
