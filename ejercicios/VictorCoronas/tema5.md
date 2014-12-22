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

Lo primero que hago es tener instalada una máquina anfitriona en el ordenador, en este caso tengo instalado un ubuntu para las practicas de clase.

El segundo paso es instalar tanto en la máquina anfitriona como en la máquina virtual "sshfs", con el siguiente comando:

    apt-get install sshfs

El tercer paso es crear en la máquina virtual un "usuario" y dentro de su directorio "/home" un directorio "pruebaSshfs", a la cual queremos acceder, dentro de "pruebaSshfs" meteremos algun archivo para poder visualizar después.

El cuarto paso será añadir el usuario creado al cual nos queremos conectar al grupo "FUSE". Seguidamente en la máquina anfitriona vamos a crear el directorio remoto "pruebaSshfs_remoto", en el cual montaremos "/home" de la máquina virtual. De esta manera, ya podemos acceder a los recursos remotos con la orden "sshfs", simplemente pasandole el usuario remoto, la IP de la mñaquina virtual, la ruta al directorio que hemos creado para compartir y la ruta del "/home" de la máquina anfitriona.

Los comandos usados en la explicación:

Para la máquina virtual:

    adduser prueba_iv
    su prueba_iv
    mkdir /home/pruebaSshfs
    touch prueba.txt
    usermod -G fuse -a prueba_iv

Para la máquina anfitriona:

    mkdir pruebaSshfs_remoto
    sshfs prueba_iv@10.0.3.134:/home /home/victorCoronas/pruebaSshfs_remoto
