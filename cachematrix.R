## This is my submission for the R programming assignment.
## Written are two functions that store cache of a matrix 
## and then calculate its inverse if it is not already calculated

## makeCacheMatrix() stores a matrix in it as well as its inverse

makeCacheMatrix <- function(a = matrix()) {
  inver <- NULL
  set <- function(b){
    a <<- b
    inver <<- NULL
  }
  get <- function() a
  setInverse <- function(inversa) inver <<- inversa
  getInverse <- function() inver
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## cacheSolve() computes inverse of matrix stored in makeCacheMatrix().
## Inverse is computed if not computed already.
## Computed inverse is stored in cache.

cacheSolve <- function(a, ...) {
  ## Return a matrix that is the inverse of 'a'
  inver <- a$getInverse()
  if(!is.null(inver)){
    message("getting cached data")
    return(inver)
  }
  ohoh <- a$get()
  inver <- solve(ohoh)
  a$setInverse(inver)
  inver      
}
