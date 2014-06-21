## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL ## set the value of the vector to NULL
        set <- function(y) {
                x <<- y ## define x 
                s <<- NULL ## define s
        }
        get <- function() x
        setinversematrix <- function(solve) s <<- solve 
                ## sets values for inverse matrix
        getinversematrix <- function() s
                ## gets values for inverse matrix
        list(set = set, get = get,
             setinversematrix = setinversematrix,
             getinversematrix = getinversematrix)
                ## returns 4 elements
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        s <- x$getinversematrix()
                ## assigns the inputed matrix to s
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
                        ## identifies if the element of x are in the cache and 
                        ## if yes, returns the previously computed value after 
                        ## displaying the message "getting cached data"
        data <- x$get()
        s <- solve(data, ...)
                        ## otherwise, solve function is called which computes 
                        ## the inverse matrix
        x$setmean(s)
                        ## set the returned value
        s
                        ## print the newly calculated value
}