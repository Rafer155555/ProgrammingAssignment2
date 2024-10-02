## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL  # Initialize the inverse as NULL
    
    # Function to set the value of the matrix
        set <- function(y) {
        x <<- y
        inv <<- NULL
        }
    
    # Function to get the value of the matrix
        get <- function() x
    
    # Function to set the inverse of the matrix
        setInverse <- function(inverse) inv <<- inverse
    
    # Function to get the inverse of the matrix
        getInverse <- function() inv
    
    # Return a list of the functions
        list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
    
    # If the inverse is already calculated, return it from the cache
        if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
        }
    
    # Get the matrix from the object
        data <- x$get()
    
    # Compute the inverse
        inv <- solve(data, ...)
    
    # Cache the inverse
        x$setInverse(inv)
    
    # Return the inverse
        inv
}
