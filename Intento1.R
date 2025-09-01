#matriz=variable aleatoria discreta

function(matriz, vect_fila, vect_columna){
  #marginales
  px<-rowSum(matriz)
  py<-colSums(matriz)
  
  #Valor esperado
  EX<-x*px
  EY<-y*py
  EXY<-sum(matriz*(x%o%y))#%o% hace todas las combiancaciones de 2 vectores
  
  #Varianzas
}


