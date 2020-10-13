## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  sol<-NULL
  set<-function(y){
    x<<-y
    sol<<-NULL
  }
  get<-function() x
  setinv<-function(inv) sol<<-inv
  getinv<-function() sol
  list(set=set,
       get=get,
       setinv=setinv,
       getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  sol<-x$getinv()
  if(!is.null(sol)){
    print('getting cached inverse')
    return(sol)
  }
  sol<-solve(x$get(),...)
  x$setinv(sol)
  print('Not cached')
  sol
}
