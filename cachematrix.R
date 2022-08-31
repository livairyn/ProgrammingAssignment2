## caching the Iinverse of a matrix
## 

## This fnction creates 

makeCacheMatrix <- function(x = matrix()) {
k <- NULL
        set <-function(y) {
                x <<- y
                k <<- NULL
}
get <- function() x
        set <- function(inverse) k <<- inverse
        getInverse <- function() k
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverce)
             
 }            
## some here 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        k <-x$getInverse() 
        if (!is.null(k)) {
                message("getting cached data")
                return(k)                
}
        mat <- x$get()
        k <- solve(mat, ...)
        x$setInverse(k)
        k
        
