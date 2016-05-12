rh <- function(estado, outcome,mp) {
    tab <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    lon <- nrow(tab)
    
    if (outcome == "infarto") {
        f <- 11
    } else if (outcome == "falla") {
        f <- 17
    } else if (outcome == "neumonia") {
        f <- 23
    } 
    
    a <- vector("numeric")
    b <- vector("numeric")
    
    if (f>10) {
        ko <- 0
        for (i in 1:lon) {
            if (tab[i,7] == estado) {
                ko <- length(a) + 1
                length(a) <- ko
                length(b) <- ko
                a[ko] <- tab[i,2]
                b[ko] <- tab[i,f]
            }
        }
        
        if (ko>0) {
            b2<- as(b,"numeric")
            w <- data.frame(a,b2)
            z <- w[order(b2,a),]
            z[1,1]
            
        if (mp == "mejor") { #hasta aqui es igual al primero, si es el mejor imprime el primero lugar de la fila uno(unica fila)
                z[1,1]
            } else if (mp == "peor") {#si es peor cambia al ultimo lugar de z que esta ordenado
                ulti <- nrow(z[complete.cases(z),])#cuenta las filas de z y utiliza la ultima
                z[ulti,1]
            } else {
                z[mp,1]#si mp es un numero, lo toma y busca en z el lugar.
            }
            
        } else {
            "ERROR"
        }
    } else {
        "ERROR"
    }
}
