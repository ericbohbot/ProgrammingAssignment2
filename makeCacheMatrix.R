#function creating an object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

#x=rbind(c(1,0.5),c(1,0.5))
#inv=makeCacheMatrix(x)
#m$get()
#cacheSolve(m)