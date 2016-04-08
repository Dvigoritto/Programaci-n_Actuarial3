
mediacontaminante<- function(directorio,contaminante,ID){ #meter ID sin comillas
    cont<-(contaminante)
    direct<-(directorio)
    dirse<-getwd()
    
    num<-c(ID) #vector que contiene el numero de IDS
    s<-length(num)#cuantos valores tiene el vector num
    
    prom <- vector("numeric",0) 
    
    for (i in 1:s ) {
        
        valor<-num[i] # valor de la posicion 1 a s del vector num
        
        if (valor<=9) {
            o<-c(valor)
            l<-paste("00",o[1],".csv",sep="")
            
        }else if (valor>=10 && valor<=99) {
            o<-c(valor)
            l<-paste("0",o[1],".csv",sep="")
            
        }else if (valor>=100) { 
            o<-c(valor)
            l<-paste(o[1],".csv",sep="")
            
        }
        
        x<-paste(dirse,direct,l,sep="/")
        f<-read.csv(x)
        
        if (cont=="sulfate"){
            c<-2 
        }else if (cont=="nitrate"){ 
            c<-3
            
        }
        
        del<-mean(f [,c ],na.rm=TRUE)#promedio de cada ID
        prom[i]<-(del) #almacena los ID
    }
    
    promT<-mean(prom) #promedio total de IDS
    
    print(promT)
}
    