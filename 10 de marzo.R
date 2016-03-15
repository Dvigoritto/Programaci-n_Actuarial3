data <- read.csv(file="table.csv")
head(data)



z <- 5
i <- 1
result <- vector("numeric",0)

while (z >= 0  && z <= 10){
    
    length(result) <- length(result)+1
    result [i] <-z
    x<- runif(1)
    
    if (x<=.5){
        z <- z+1
        result[i] <- z
    } else {
        z <- z-1
        result[i] <-z
    }
    i=i+1
 }
print (result)
plot(result,type="s", lwd=5)
 


#15 de marzo graficacion plot
#repeat inicia un ciclo infinito hasta un break
#next se salta y vuelve a empezar el ciclo
#return se usa con funciones 


misuma <- function(x,y){
    x+y
}
    


mayor10 <- function(x){
    validos<- x>10
    x[validos]
}


mayor<- function(x,y){
    x[x>y]
}
 
promc <- function(x,na.rm=TRUE){
    nc<-ncol(x)
    prom<-vector("numeric", nc)
    for(i in 1:nc){
        prom[i] <- mean (x[,i], na.rm=TRUE)  
    }
  prom  
}




camina<-function(x){
    z <- 100
    
    secu <- vector("numeric",0)
    for(i in 1:x){
        
        secu[i] <- z
        length(secu) <- length(secu)+1
        moneda <- runif(1)
        if(moneda <=.5){
            z <- z + .5
        } else {
            z <- z - 0.5
        }
        
    }
    secu
    plot(secu, type = "l")
}




