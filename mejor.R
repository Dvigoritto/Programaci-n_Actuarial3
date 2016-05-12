outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
head(outcome)
outcome[, 11] <- as.numeric(outcome[, 11]) 
hist(outcome[, 11]) 



mejor <- function(estado, outcome) {
    tab <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    lon <- nrow(tab)#numero de filas que tiene el documento
    
    #para tomar la causa de muerte que se pide
    if (outcome == "infarto") {
        f <- 11
    } else if (outcome == "falla") {
        f <- 17
    } else if (outcome == "neumonia") {
        f <- 23
    }
    
    #defino las variables como vectores donde voy a guardar mis valores
    a <- vector("numeric")
    b <- vector("numeric")
    
    if (f>10) {
        ko <- 0
        for (i in 1:lon) {
            if (tab[i,7] == estado) {
                ko <- length(a) + 1
                length(a) <- ko
                length(b) <- ko
                a[ko] <- tab[i,2]#hospitales
                b[ko] <- tab[i,f]# muertes 
            }
        }
        
        if (ko>0) {
            b2 <- as(b,"numeric")#cambia la clase de b por numerico
            w <- data.frame(a,b2)
            z <- w[order(b2,a),]#ORDER principal funcion
            z[1,1]#imprime el primer lugar de la fila uno
        } else {
            "ERROR"
        }
    } else {
        "ERROR"
    }
}
