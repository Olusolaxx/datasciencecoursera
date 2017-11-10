## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The first function called makeCacheMatrix creates a special matrix
## object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  
          inverseMatrix <- NULL
          
          set <- function(y){
            x <<- y
            inverseMatrix <<- NULL
          }
          
          get <- function()x
          setInverse <- function(inverse) inverseMatrix <<- inverse 
          getInverse <- function() inverseMatrix
          list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
          

}


## Write a short comment describing this function

## The second function called cacheSolve caches the inverse of a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          inverseMatrix <- x$getInverse()
          
          if(!is.null(inverseMatrix)){
            message("getting the cached inverse matrix")
            return(inverseMatrix)
          }
          
          matrix <- x$get()
          inverseMatrix <- solve(matrix, ...)
          x$setInverse(inverseMatrix)
          inverseMatrix
}
