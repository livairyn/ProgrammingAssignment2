
## below are pair of functions that are used to create a special object 
## that stores a matrix and catches its inverse


## This function creates a special "matrix " object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <-function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse)inv <<- inverse
        getInverse <- function()inv 
    
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}
                        
## this is used to get the catch data

cacheSolve <- function(x, ...) 
  {
        ## Return a matrix that is the inverse of 'x'
        inv <-x$getInverse() 
        if (!is.null(inv)) 
          {
                message("getting cached data")
                return(inv)                
}
        data <- x$get()
        inv <- solve(data, ...)
        x$setInverse(inv)
        inv
}

