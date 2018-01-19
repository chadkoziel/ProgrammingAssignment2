setwd("C:/Users/chad.koziel/Documents/GitHub/ProgrammingAssignment2")

# this function creates a list containing a function to:
# set the value of the list
# get the value of the list
# set the value of the inverse
# get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
     inverse <- NULL
     set <- function(y) {
          x <<- y
          inv <<- NULL
     }
     get <- function() x
     setinverse <- function(invmatrix) inverse <<- invmatrix
     getinverse <- function() inverse
     list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}


# this function checks to see if the inverse has been calculated, if so, it retrieves inverse from cache.
# otherwise, it calculates the inverse and sets the inverse in the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inverse <- x$getinverse()
     if(!is.null(inverse)) {
          message("getting cached data")
          return(inverse)
     }
     data <- x$get()
     inverse <- solve(data)
     x$setinverse(inverse)
     inverse
}
