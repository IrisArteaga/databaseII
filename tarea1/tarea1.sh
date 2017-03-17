#!/bin/sh

echo "¡Bienvenido! Este programa calcula la suma de 2 ó 3 números."

echo "Comencemos: ¿Cuántos números quieres sumar?"
read NUMERO
if test "$NUMERO" == "2"
then
   echo "Introduce el Primer número:"
   read NUMERO1
   echo "Introduce el Segundo número:"
   read NUMERO2
   echo "El total es:$(expr $NUMERO1 + $NUMERO2)"
elif test "$NUMERO" == "3"
then 
   echo "Introduce el Primer número:"
   read NUMERO1
   echo "Introduce el Segundo número:"
   read NUMERO2
   echo "Introduce el Tercer número:"
   read NUMERO3
   echo "El total es:$(expr $NUMERO1 + $NUMERO2 + $NUMERO3)"
else
   echo "Número incorrecto"
fi



 


