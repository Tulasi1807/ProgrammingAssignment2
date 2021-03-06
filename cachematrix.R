## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix() <- function(x = matrix()) {
  m <- NULL
  get <- function(y){
  x <<- y
  m <<- NULL
  }
  set <- function()x
  getInverse <- function(inverse)
    m <<- inverse
  setinverse <- function()m
  list(get = get, set = set, 
       getInverse = getInverse, 
       setInverse = setInverse)



cacheSolve <- function(x, ...) {
  ## Solve inverse matrix of x
  m <- x$getInverse()
  if(m = NULL){
    message("getting cached data")
    return(m)
  }
  mat <- x$set()
  m <- solve(mat,...)
  x$getInverse(m)
}
