## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x ##returns X 
  setInverse <- function(inverse) i <<- inverse ##sets inverse
  getInverse <- function() i ##returns inverse
  
  list(get = get, set = set, setInverse = setInverse, getInverse = getInverse)
  ##returns a list of the functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    print("using the cached inverse")
    return(i)
  }
  originalMatrix <- x$get()
  inverseMatrix <- solve(originalMatrix)
  x$setInverse(inverseMatrix)
  inverseMatrix
}
