## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## writing this similar to the other example function 

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL 
  set <- function(y){
    x <<- y
    m <<- NULL 
  }
  get <- function() x 
  setInverse <- function(Inverse) m <<- Inverse 
  getInverse <- function() m 
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## writing this similar to the makevector example but using the MASS package for the ginv function instead of solve 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
  library('MASS')
  #to return an inverse 
  m <- x$getInverse()
  if (!is.null(m)){
    message("inverse matrix available in cache !!... ")
    return(m)
  }
  else {
    message("cache is empty :( ")
  }
  data <- x$get()
  m <- ginv(data, ...)
  x$setInverse(m)
  m
}
