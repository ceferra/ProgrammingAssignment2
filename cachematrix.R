## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix", which is really a list containing a function to set/get the value of the matrix and set/get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

   m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- mean
        getinv <- function() m
        list(set = set, get = get,
             setinv = setomv,
             getinv = getinv)

}


## This function calculates the inverse of the special "vector" created with the above function. However, it first checks to see if the mean has already been calculated. If so, it gets the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}
