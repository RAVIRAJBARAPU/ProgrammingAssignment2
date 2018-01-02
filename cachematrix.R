## Put comments here that give an overall description of what your
## functions do

## Call the matrix & save the Data to make analysis in the subsequent section

makeCacheMatrix <- function(x = matrix()) {
          inv <- NULL
  set <- function(y) {
  x <<- y
  inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) 
  inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get,setinv = setinv,getinv = getinv)

}


## This function allows to calculate inverse of the given matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                  inv <- x$getinv()
  if(!is.null(inv)){
  message("getting cached data")
  return(inv)
  }
 data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
