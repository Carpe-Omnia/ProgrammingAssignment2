## Tried to keep this relatively similar to the example
## Wasn't sure about makeCacheMatrix returning a list but checked on the course forum and saw 
## that's what it's supposed to do?

##make cache matrix returns a list of functions for getting and setting the value and it's inverse
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


## checks to see if the inverse has already been set in the makeCacheMatrix function
## if not it calculates it and sets it
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
