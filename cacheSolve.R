#cacheSolve
cacheSolve <- function(x, ...) {# the input x is the argument to makeCacheMatrix
        xinv <- x$getxinv()   # has a reference to the address of the inverse of x so
        # it gets xinv using that address unless xinv is NULL
        if(!is.null(xinv)) {  # if the inverse was already cached (not NULL) do this
                message("getting cached data") # send message that information 
                # was retrieved not calculated
                return(xinv)               # return the xinv, end execution of the 
                # function cacheSolve
        }
        data <- x$get()       # x$getxinv() returned NULL so call x data and 
        # calculate the inverse
        xinv <- solve(data, ...)  # uses R's solve() in Matrix pkg, function to 
        # calculate the inverse of the data
        x$setxinv(xinv)      # for a particular x a pointer to x and it's inverse 
        # value are stored by makeCacheMatrix()
        xinv               # returns the value of the inverse
}