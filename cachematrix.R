## Put comments here that give an overall description of what your
## functions do

## this function return a list containing four functions

makeCacheMatrix <- function(x = matrix()) {
#Assuming X is a square whose inverse exist

#this method will return a list having four functions 1).set(setting matrix) 2). get (getting matrix)  3). setinv  (setting the inverse)  4). getinv (getting the inverse)

inv = null;
set <- function (y) {
  # '<<-' this symbol is used to set value to new environment

  x <<- y
  inv <<- null
  
}

get <- function ()  {x }

setinv <- function (inverse )  {inv <<- inverse}

getinv <- function () {  inv }

list ( set = set , get = get , setinv = setinv , getinv = getinv  ) 

}


##  this function will check in reverse in cache environment if exist will return the inverse otherwise it will calculate the inverse and cache that inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		## First It will Check In Cache If inverse exist othervise calculate the inverse and store it in cacheSolve
		
		inv <- x$getinv()
		
		#check if inverse exists , return if exists
		if(!is.null(inv)){
		   return(inv)
		}
		
		mt.data <- x$get()
		
		#function to get inverse
		inv <- solve(mt.data,...)
		
		#set the inverse in cache environment
		x$setinv(inv)
		
		return(inv)
}
