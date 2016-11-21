## The following functions retrieve the inverse of a matrix. 
## The inverse is cached rather than computing it repeatedly,
## which is benefitial because reduces the time of computing

## The firts fuction create a matrix and 
## generates a list with the "getter" and "setter"

makeCacheMatrix <- function(x = matrix()) { ## Asuming that X is a square matrix
        inv <- NULL
        set <- function (y) {
                x <<- y
                inv <<- NULL
        }
        get <- Function ()x
        setinv <- function(solve) inv <- solve
        getinv <- function () inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## The Second function calculate the inverse
## of the matrix calculated with the above function

cacheSolve <- function(x, ...) {
        inv <- x$getinv        ## Return a matrix that is the inverse of 'x'
        if (!is.null(inv)){     ## if cach is not empty
                message("getting cached data") ## retrieves this message
        }
        data <- x$get() ## if cache is empty, then calculates the inverse
        inv <- solve(data) ## of a square matrix
        x$setinv
        inv
}
