## These functions implement caching of a matrix with its inverse.
## cache <- makeCacheMatrix(matrix) creates an initialized cache.
## cache$get() returns the stored matrix.
## cache$set(matrix) changes the stored matrix.
## cacheSolve(cache) solves (or only accesses) the inverse.


## Creates a cache object initialized with the passed matrix.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinv <- function(inv) inverse <<- inv
  getinv <- function() inverse
  list(set = set, get = get,
       setinv = setinv, getinv = getinv)
}


## Solves, stores, and returns the inverse of the cached matrix,
## or only returns it if it already exists.

cacheSolve <- function(x, ...) {
  inverse <- x$getinv()
  if (!is.null(xi)) {
    message("getting cached inverse")
    return(inverse)
  }
  xm <- x$get()
  inverse <- solve(xm, ...)
  x$setinv(inverse)
  return(inverse)
}
