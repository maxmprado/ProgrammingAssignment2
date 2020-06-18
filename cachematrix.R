## Put comments here that give an overall description of what your
## functions do

makeCacheMatrix <- function( m ) {
  
  
  
  set <- function( mat ) {
    m <<- mat
    y <<- NULL
  }
  
  
  get <- function() {
    m
  }
  
  
  setInverse <- function(inverse) {
    y <<- inverse
  }
  

  getInverse <- function() {
    y
  }
  
  
  invisible(list(set = set, get = get,
                 setInverse = setInverse,
                 getInverse = getInverse))
}



cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
