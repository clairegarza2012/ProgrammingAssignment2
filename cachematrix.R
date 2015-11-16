## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  myinverse <- NULL
  set <- function(y) {
    x <<- y
    myinverse <<- NULL
  }
  get <- function() x
  
  setinverse <- function(inverse) myinverse <<- inverse
  getinverse <- function() myinverse
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  ## Return a matrix that is the inverse of 'x'
  if (!is.null(inverse)){
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(x)
  x$setinverse(m)
  inverse
}
