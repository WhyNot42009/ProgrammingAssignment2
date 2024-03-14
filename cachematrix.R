## Put comments here that give an overall description of what your
## functions do

## I simply set the input X as a matrix
## and then set the solved value "s" as a null
## then I changed every reference to "mean" to "solve"

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
        s <- NULL
  set <- function(y) {
    X <<- y
    s <<- NULL
  }
  get <- function() X
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

cacheSolve <- function(X, ...) {
        s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
        ## Return a matrix that is the inverse of 'X'
}
