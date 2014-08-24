#makeCacheMatrix
makeMatrix <- function(x = numeric()) { # input x will be a Matrix
        xinv <- NULL # initial xinv value set to null after function call
        # The four functions below are function definitions not calls
        # so they do nothing with x until cacheSolve() is called
        set <- function(y) {  
                x <<- y
                xinv <<- NULL
        }
        get <- function(){x}
        setxinv <- function(inverse){ xinv <<- inverse}  # called by cacheSolve before 
        # it closes during the first call
        getxinv <- function(){xinv}  # this will return the cached value to 
        # cacheSolve on subsequent access
        # the last item in the function 'makeCacheMatrix' is a list object
        list(set = set, get = get,   # a list of source file references so that 
             # cacheSolve will have something to refer to.
             setxinv = setxinv,      # the list has all the references to 
             # functions called by cacheSolve
             getxinv = getxinv)      # anothermethod: object$get, object$set etc.
}
