#Tema 4
###Ejercicio 1
#####Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.
El primer paso es instalar lxc con la siguiente orden:
	
    sudo apt-get install lxc
    
Tras esto, comprobamos que es compatible con la siguiente orden:

	lxc-checkconfig
    
![ejer1](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/ejer1tema4.png)

###Ejercicio 2
#####Comprobar qué interfaces puente se han creado y explicarlos.

Primeramente creamos el contenedor con la siguiente orden:

	sudo lxc-create -t ubuntu -n una-caja

![ejer2-1](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/ejer2-1tema4.png)
    
Tras las instalacion, procedemos a arrancarlo:

	lxc-start -n una-caja
    
Ahora podemos ver el estado de los contenedores con la orden:

	lxc-list
    
![ejer2-2](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/ejer2-2tema4.png)
    
y tambien utilizamos la orden:

	ipconfig -a
    
![ejer2-3](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/ejer2-3tema4.png)

###Ejercicio 3
#####1.Crear y ejecutar un contenedor basado en Debian.

Para instalar el contenedor de Debian utilizamos: 

	sudo lxc-create -t debian -n debianita
    
Y para ejecutarlo utilizamos:

	sudo lxc-start -n debianita
    
![ejer2-3](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/ejer3-1tema4.png) 

#####2.Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.