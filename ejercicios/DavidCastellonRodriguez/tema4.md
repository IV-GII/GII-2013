#Ejercicio 1

###### Instala LXC en tu versión de Linux favorita. 

`sudo apt-get install lxc lxc-templates`

#Ejercicio 2

###### Comprobar qué interfaces puente se han creado y explicarlos.

Interface puente creado:

![Interface](images/t4c1.jpg)

#Ejercicio 3

######Crear y ejecutar un contenedor basado en Debian.


`sudo lxc-create -t debian -n contenedor-debian`

`sudo lxc-start -n contenedor-debian`

![contenedor-debian](images/t4c2.jpg)

#Ejercicio 4

######Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.

######Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

Podemos instalar directamente con el siguiente comando:

`wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash`

![ejercicio4](images/t4c3.jpg)

Vemos que tras la instalación nos indica la dirección donde podemos entrar para acceder al panel donde podremos cambiar los recursos de cada máquina virtual.

![ejercicio4a](images/t4c4.jpg)

#Ejercicio 5

######Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.

#Ejercicio 6

######

#Ejercicio 7

######

#Ejercicio 8

######

#Ejercicio 9

######

#Ejercicio 10

######

#Ejercicio 11

######

#Ejercicio 12

######

#Ejercicio 13

######

#Ejercicio 14

######

