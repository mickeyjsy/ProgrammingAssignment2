## This functions are trying to cache the inverse of a matrix.

## This function creates a special "matrix":
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
      minverse <- NULL
      set <- function(y){
              x <<- y
              minverse <- NULL
      }
      get <- function() x
      setinverse <- function(inverse) minverse <<- inverse
      getinverse <- function() minverse
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)

}


## The following function calculates the inverse of the special "matrix" created with the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        minverse <- x$getinverse()
        if (!is.null(minverse)) {
              message("getting cached data")
              return(minverse)
        }
        data <- x$get()
        minverse <- solve(data, ...)
        x$setinverse(minverse)
}

