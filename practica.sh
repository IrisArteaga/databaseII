#!/bin/sh

echo "dime tu nombre:"
read NOMBRE
echo "Holas $NOMBRE, encantado de conocerte"

if test "$NOMBRE" == "Juan"
then
  echo "Hola Juanin, que tal?"
elif test "$NOMBRE" == "Pedro"
then 
  echo "Pedreteee, Cuanto tiempo!!"
else
  echo "No te conozco"
fi


