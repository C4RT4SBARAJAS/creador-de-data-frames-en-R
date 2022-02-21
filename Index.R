# Nombre del programa: Creador de data frames.
filas <- function(numero.de.filas) {
  vector <- c()
  
  cat("
Sus valores son:
  
(1) Tipo número
(2) Tipo texto

")
  menu <- "Elige una opción escribiendo el número: "
  
  opcion <- as.integer(readline(menu))
  
  for (i in 1:numero.de.filas) suppressWarnings({
    
    if (is.na(opcion)) {
      
      message("❌ Tu respuesta no es valida")
      
    } else if (opcion == 1) {
      
      valor <- as.numeric(readline("Ingrese los valores a continuación: " ))
      vector[i] <- valor
      print(vector) 
      
      
    } else if (opcion == 2) {
      
      valor <- readline("Ingrese los valores a continuación: " )
      vector[i] <- valor
      print(vector) 
      
    } else {
      
      message("❌ Ingrese una opción correcta")
      
    }
  })
  return(vector)
}

columnas <- function(numero.de.columnas) {
  vector <- c()
  
  for (i in 1:numero.de.columnas) {
    nombre <- readline("Ingrese el nombre de columna a continuación: " )
    vector[i] <- nombre
    print(vector)
  }
  return(vector)
}

data.frames <- function(numero.de.columnas, numero.de.filas) {
  columnas <- columnas(numero.de.columnas)
  filas <- filas(numero.de.filas)
  filas.data.frame <- as.data.frame(filas)
  colnames(filas.data.frame) <- columnas 
  print(str(filas.data.frame))
  return(filas.data.frame)
}

fusion.de.data.frames <- function() {
  data <- c()
  contador <- as.integer(readline("Indique el número de columnas: " ))
  numero.de.columnas <- c(1) 
  numero.de.filas <- as.integer(readline("Indique el número de filas: " ))
  
  for (i in 1:contador) {
    data.frames <- data.frames(numero.de.columnas, numero.de.filas)
    data[i] <- data.frames
    print(data)
  }
  return(data)
}

renombrar.columnas <- function(numero) {
  vector <- c()
  
  for (i in 1:numero) {
    nombre <- readline("Ingrese los nombres de columna nuevamente a continuación: " )
    vector[i] <- nombre
    print(vector)
  }
  return(vector)
}

run <- function() {
  data <- fusion.de.data.frames()
  data.frame <- as.data.frame(data)
  numero <- ncol(data.frame)
  renombrar.columnas <- renombrar.columnas(numero)
  colnames(data.frame) <- renombrar.columnas
  print(str(data.frame))
  print(data.frame)
  
}

cat("
¡Bienvenido al creador de data frames!

")

run()
