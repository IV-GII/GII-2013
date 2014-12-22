##TEMA 5

#VIRTUALIZACIÓN

#Clase del 4 de Noviembre de 2014

* [+]Ejercicio 1
 - A) ¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?

Lo primero que hago es instalar "Gparted" con:

    apt-get install gparted

Una vez lo tenemos instalado lo ejecutamos, entonces se nos mostrará todos los volúmenes lógicos instalados en nuestro equipo, así como todas las particiones y que hay, en caso de que se tengan.
En mi caso, solo tengo un disco duro y varias particiones realizadas, que son:

    Mac os x
    Linux
    Windows

Como se puede [ver en la siguiente captura](), cada uno tiene su propio sistema de archivos.

 - B) Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?

Si he podido tener acceso a los ordenadores de la escula, en un aula de prácticas. Estos ordenadores usan un sistema de ficheros remoto, que no se encuntra en el ordenador local.


 - C) Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.

* [+]Ejercicio 2
 - A) Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.
