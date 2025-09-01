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
  EX2<-sum(x^2*px)
  EY2<-sum(y^2*py)
  
  VarX <- EX2 - EX^2
  VarY <- EY2 - EY^2
  
  #coeficiente de correlacción entre X y Y
  CovXY<-EXY-EX*EY
  
  #Resultados
  list(
    soporte_X = vect_fila,
    soporte_Y = vect_columna,
    marginal_X = px,
    marginal_Y = py,
    EX = EX, EY = EY, EXY = EXY,
    VarX = VarX, VarY = VarY,
    CovXY = CovXY
  )
}


