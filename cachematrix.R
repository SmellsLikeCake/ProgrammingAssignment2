## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <<- NULL
    set <- function(y) {  ## This is used to change the matrix from x to y
        x <<- y
        inv <<- NULL
    }
    get <- function() {x}
    set_inverse <- function(input) {inv <<- input}
    get_inverse <- function() {inv}
    list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    if(!is.null(x$get_inverse())) {
        message("getting cached data")
        return(inv)
    } else
        inv <- solve(x$get())
        x$set_inverse(inv)
        inv
}
