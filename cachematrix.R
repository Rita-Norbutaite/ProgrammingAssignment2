
## can cashe inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    # returns a list with functions
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## find matrixs inverse, must use makeCacheMatrix function

cacheSolve <- function(x, ...) {
    m <- x$getsolve()
    # checks if inverse matrix are in cache
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}












