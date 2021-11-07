# R tiene otras clases 
# https://stat.ethz.ch/R-manual/R-devel/library/methods/html/BasicClasses.html

# ¿Cómo podemos crear un objeto S4?
# Se crean usando la función new()

# Vamos a crear un ejemplo, con un nombre de clase y valores para los slots

# Creamos primero una clase

setClass("estudiante", slots=list(nombre="character", edad="numeric", estatura="numeric"))

# Creamos el objeto 

s <- new("estudiante", nombre="Yalbi", edad=20, estatura=1.60)
class(s)
isS4(s)

# La función setClass regresa una función generadora

estudiante <- setClass("estudiante", slots=list(nombre="character", edad="numeric", estatura="numeric"))

estudiante(nombre="Itzel", edad=21, estatura=1.61)

# ¿Cómo modifico un slot?

# Acceder a un slot

s@nombre
s@edad
s@estatura

# Modificar un slot

# Se hace un re-asignamiento

s@estatura <- 1.62

# Usando la función slot

slot(s, "nombre")
slot(s, "nombre") <- "Yalbil"








