#matriz=variable aleatoria discreta

funcion<-function(matriz, x, y){
  #marginales
  px<-rowSums(matriz) #suma las filas de la matriz
  py<-colSums(matriz) #suma las columnas de la matriz
  
  #Valor esperado
  EX<-sum(x*px)
  EY<-sum(y*py)
  EXY<-sum(matriz*(x%o%y))#%o% hace todas las combiancaciones de 2 vectores
  
  #Varianzas
  EX2<-sum(x^2*px) #se calcula para usarla en la varianza x
  EY2<-sum(y^2*py) #se calcula para usarla en la varianza y
  
  VarX <- EX2 - EX^2
  VarY <- EY2 - EY^2
  
  #coeficiente de correlacción entre X y Y
  CovXY<-EXY-EX*EY
  
  #Resultados
  list(
    soporte_X = x,
    soporte_Y = y,
    marginal_X = px,
    marginal_Y = py,
    EX = EX, EY = EY, EXY = EXY,
    VarX = VarX, VarY = VarY,
    CovXY = CovXY
  )
}


# Matriz de probabilidades conjuntas (filas: X, columnas: Y)
matriz <- matrix(c(0.10, 0.05,
              0.20, 0.15,
              0.25, 0.25), nrow = 3, byrow = TRUE)
# Soportes (opcional)
x <- c(0, 1, 2)   # valores que puede tomar X
y <- c(1, 3)      # valores que puede tomar Y

res <- funcion(matriz,x, y)
str(res)
