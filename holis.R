
# comentario 
msg <- "hola a todos"

# asignacione variables
x <- 
print(x)

x <- 1:100
#clases atomicaen R
?class

class(1)
class(1L)
class((3+12i)*(3-12i))
class(TRUE)
class(TRUE*1)
class(c(1,FALSE,3L,2+4i,"a"))
a <- vector(mode = "numeric", length = 10)





a <- c(1,5,3L,2+4i,T)
b <- c(a,"cadena")
c <- c(1,5,3L,2+4i,"cadena")

#coercion explicita
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.complex(x)
as.character(x)

#listas
x <- list(F, 3L, 94.5, 2+3i, "a")

#matrices
x <- matrix(nrow = 2, ncol = 3)
x <- matrix(1:10,2,5,)
#crecaion de matriz al forzAR SU DIMENCION
x <- 1:10
x
dim(x) <- c(2,5)

# CBIND Y RBIND
x <- 1:5
y <- 11:15
z <- 21:25

cbind(x,y,z)
rbind(x,y,z)

g <- 11:15
h <- 21:25
i <- 31:35
j <- 41:45
k <- 51:55

rbind(g,h,i,j,k)

y <- factor(c("azul","amarillo", "morado", "rojo", "verde")), levels c("si","no")

table (y)
plot(y)
y <- factor(c("azul","amarillo", "morado", "rojo", "verde"),levels = c("si","no"))

#valores faltantes
x <- c(1,2,NA,10,3)
is.na(x)

#data frame
x <- data.frame(foo=11:14, bar=c(T,F,F,T))
x
row.names(x)
 
row.names(x) <- c("hugo", "paco","luis","rosita")

nrow(x)
ncol(x)

#modificar el nombre de las columnas
x <- 1:3
names(x) <- c("foo", "bar","norf")
x

x <- list(a=1,b=2,c=3)

#nombres en matrices
m <- matrix(1:4,nrow=2,ncol=2)
m
dimnames(m) <- list(c("a","b"),c("c","d"))
m

#nueva clase desplegando unas tabla de mis documentos
data <- read.csv(file="table.csv")
head(data)

#falta una clase
#subconjuntos
x <- list(aadvark=1:5)
dput(airquality,file = "airquality".R)
x <- airquality

#ESTRUCTURAS DE CONTROL 
##IF ELSE
x <- 2
if (x>3){
     y <- 10
} else {
     y <-5
}

#otra manera
x <- 2
y <- if (x>3){
    10
} else{
    5
}


30 hola
20 que onda
10 que pedo wey
20 quiubo
20 que pex

x <- runif(1, min=1, max=100)
y<-if (x<30) {
    "hola"
}  else if (x>30  && x<50){
    "que onda"
} else if (x>50 && x<60){
    "que pedo wey"
} else if (x>60 && x<80){
    "quiubo"
} else {
    "que pex"
}
y
    

    



    