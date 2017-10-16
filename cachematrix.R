## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Following two function are to cache the metrix data provide the inverse from cache
## makeCacheMatrix create a list of functions 
## 1. set: To set the matrix
## 2. get: To get the matrix
## 3. setInverse: To set the inverse of matrix
## 4. getInverse: to get the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  } 
  
  get <- function() x
  setInverse <- function(inverse) inv <<-  inverse
  getInverse <- function() inv 
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}




## cache Solve return the inverse of matrix, it assume the matrix is invertible

## It compute the inverse if inverse is NULL, 

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}
