



pml_write_files = function(x,datdir){
  n = length(x)
  for(i in 1:n){
    #filename = paste("problem_id_",i,".txt")
    filename = paste(datdir,"problem_id_",i,".txt")
    write.table(x[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
  }
}


missClass = function(values,prediction)
  {
    sum(((prediction > 0.5)*1) != values)/length(values)
  }

# extract the names of the  variables in a data frame that only have missing cases
rmMissing4allcases <- function(X)
{
  #test = (apply(is.na(x),2,sum)) == dim(x)[1]
  #print (test)
  logicalVector <- apply(!is.na(X),2,sum)== dim(X)[1]
  X <- X[,logicalVector]
  #print (dim(only_data))
  #return(only_data)
  
}