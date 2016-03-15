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
