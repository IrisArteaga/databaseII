# TAREA 3: PRACTICA DE PL/R

# CONECTANDOSE A LA BASDE DE DATOS

library(RPostgreSQL)

drv <- dbDriver("PostgreSQL")
base <- dbConnect(drv, dbname="practicaplr",port=5432, user="iris", password="dataBASE**123**")

dbListTables(base)
dbExistsTable(base, "notas")
dbListFields(base, "notas")


tablaN <-dbReadTable(base,"notas")
head(tablaN, 10)
names(tablaN)


# Conectandose a la base de datos practicaplriris para copiar la tabla de notas

base2 <- dbConnect(drv,dbname="practicaplriris", port=5432, user="iris", password="dataBASE**123**")

dbWriteTable(base2,"notas", tablaN)
dbListTables(base2)
dbExistsTable(base2, "notas")
dbListFields(base2, "notas")

tablaNotas <-dbReadTable(base2,"notas")
head(tablaNotas, 10)
names(tablaNotas)
