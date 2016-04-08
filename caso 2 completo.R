completos<-function(directorio,ID){
direct<-(directorio)
dirse<-getwd()

num<-c(ID) 
s<-length(num)

prom <- vector("numeric",0) 

for (i in 1:s ) {
    
    valor<-num[i] 
    
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
    
    
    del<- sum(complete.cases(f))
    prom[i]<-(del) 

}

df<-data.frame(ID=num,CasosC=prom)
df
}
