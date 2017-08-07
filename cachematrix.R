## Caching inverse of a matrix 

## Setters and getters for inverse matrix

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 set <- function(y){
   x <<- y
   m <<- NULL
 }
 get <- function() x
 setinverse <- function(solve) m <<- solve
 getinverse <- function() m
 list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Calculates the inverse of the matrix, or reads it from cache

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
          message("getting cached data")
          return (m)
        }
        data <- x$get()
        m<- solve(data,...)
        x$setinverse(m)
        m
}
