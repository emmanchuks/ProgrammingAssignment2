## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
    inv <- x$getinverse()
  ##Checking if matrix is existing for avoiding re-calculation and returning the inverse
    if(!is.null(inv)) {
        message("Inverse already aviliable, Reading from Cache")
        return(inv)
    }
  ##Assigning matrix x to a variable
    var_mat <- x$get()
  ##Solving for inverse
    inv <- solve(var_mat, ...)
  ##passing inverse of the matrix to setter
    x$setinverse(inv)
    inv
}

