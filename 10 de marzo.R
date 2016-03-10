data <- read.csv(file="table.csv")
head(data)



z <- 5
i <- 1
result <- vector("numeric",i)

while (z >= 3  && z <= 10){
    
    result [i] <-z
    length(result) <- length(result)+1
    x<- rbinom(1,1,.5)
    
    if (x==1){
        z <- z+1
        result[i] <- z
    } else {
        z <- z-1
        result[i] <-z
    }
    i=i+1
 }
print (result)
