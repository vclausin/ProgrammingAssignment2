## This script will cache the inverse of a matrix.

## This function will create a list of functions to set a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL

}


## This function solves for a matrix's inverse if it hasn't been cached previously.

cacheSolve <- function(x, ...) {
        solve(x) ## Return a matrix that is the inverse of 'x'
}
