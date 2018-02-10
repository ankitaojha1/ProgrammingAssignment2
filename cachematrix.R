## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special "vector", which is really a list containing a function to set and get values
## of the matrix and the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)

}


## Below function checks if invese has already been calculated; if yes, it skips calculation
## calculates the inverse matrix


cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        data <- X$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
