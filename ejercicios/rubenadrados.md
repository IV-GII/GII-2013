Ejercicios de Rubén Adrados Bretón

Tema 1

Ejercicio 3
1. Varios clientes en un solo servidor: Para este usaría un entorno de virtualización a nivel se sistema operativo, ya que tendría al servidor como anfitrión y a los clientes aislados en los contenedores.

Crear un sistema eficiente de web + middleware + base de datos: un sistema de virtualización plena ya que tiene estructuras de control llamadas hipervisores para controlar los diferentes aspectos de web y base de datos.

Un sistema de prueba de software e integración continua: dado que es un sistema de prueba simplemente debe usarse una virtualización de entornos de desarrollo para así probar las diferentes versiones y por tanto así tenemos cubierta una integración continua.

Creamos un archivo ejecutable que contenga: #!/usr/bin/python print "Hello World"
Y una vez descargado e instalado el paquete CDR ejecutamos el archivo de prueba:
./holamundo.py

Ejercicio 4
imagen

Ejercicio 5
Para instalar el sistema de gestión de fuentes tenemos que escribir en la linea de ordenes lo siguiente: 
apt-get install -y git

Ejercicio 6
En mi repositorio hay un proyecto de prueba con el archivo README modificado.

Ejercicio 7
En mi caso se encuentra situado en:
/sys/fs/cgroups

Contiene diferentes ficheros, tanto de lectura como de escritura.

Ejercicio 10
Intel(R) Core(TM) i3 CPU M 330 @ 2.13GHz
Tras ejecutar:
$ egrep '^flags.*(vmx|svm)' /proc/cpuinfo

Aparece como que no estan acivos o instalados.

Ejercicio 11
Ejecutando la orden:
kvm-ok

Muestra que no esta instalado.
