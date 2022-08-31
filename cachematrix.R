caching the Inverse of a matrix
## below are pair of functions that are used to create a special oobject 
## that stres a matrix and caches its inserve
## This function creates a spesial "matrix " object that can cache its inverse

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
## this function computes the inverse of the special "matrix" created by
## make CacheMatrix above. If the inverse has already been calculated (and the matrix has not
## changed) , than it should retrieve the inverse from the cache

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
        
