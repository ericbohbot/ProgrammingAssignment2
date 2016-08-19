#function computing the inverse of the matrix x.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  #if x i already in the list
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  #otherwise, calculating its inverse
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(inv)
  inv
}