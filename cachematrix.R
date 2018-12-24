## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#returns a list of cached inverted matrix 

makeCacheMatrix <- function(x = matrix()) {
  inverted <- NULL
  set <- function(y){
    x<<- y
    inverted <- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inverted <<- inverse
  getInverse <- function() inverted
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

#check if the matrix is arealy cached inverted, if it is, returns it, if not, invert it and, return.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverted <- x$getInverse()
  if (!is.null(inverted)) {
    return(inverted)
  }
  matriz <- x$get()
  inverted <- solve(matriz, ...)
  x$setInverse(inverted)
  inverted
}
