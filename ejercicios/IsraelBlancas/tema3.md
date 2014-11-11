Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 3: Introducción a la infraestructura virtual: concepto y soporte físico#


##Sesión 4-11-2014##

##Ejercicio 1##
#####Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en [ServerFault](http://serverfault.com/questions/198135/how-to-mount-an-iso-file-in-linux) nos explican como hacerlo, usando el dispositivo loopback#####

La forma de hacerlo es ejecutnado el comando

`mount -o loop -t imagen imagen.iso /mnt/imagen`

Donde imagen es el fichero a montar.
