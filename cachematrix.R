## Put comments here that give an overall description of what your
## functions do
  Step1 Give an argument matrix to 'makeCacheMatrix', when a function call is 
        made to 'makeCacheMatrix' to retrieve the object the inverse of the 
        argument matrix x. It first sets xinv to NULL.
  
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { # input x will be a matrix
        # input will be a matrix
        xinv <- NULL # xinv will be the 'inverse' and it will be reset to NULL 
                     # ever time makeCacheMatrix is called
        set <- function(y) {
                x    <<- y
                xinv <<- NULL
        }
        get <- function(){x}  # returns the value of the argument input
        setinv <- function(inv){ xinv <<- inv}
        getinv <- function(){xinv}
        # the last item in the function 'makeVector' is a list object
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
        
}


## Write a short comment describing this function
# The function cacheSolve returns the inverse of a matrix x
# If x is already in the cache, so is it's inverse so the function returns the
# cached xinv.  If x is not in the cache then its inverse needs to be computed. 
# The R function solve(x) is used to compute xinv and the value is returned.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        xinv <- solve(x)
}
