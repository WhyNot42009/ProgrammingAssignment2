## Put comments here that give an overall description of what your
## functions do

## Setting input X as matrix
## and inputting solved value "s" as null. 

makeCacheMatrix <- function(X = matrix(sample(1:100,9),3,3)) {
        s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## changing "mean" to "solve" and "m" to "s"

cacheSolve <- function(x, ...) {
        s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
        ## Return a matrix that is the inverse of 'x'
}
