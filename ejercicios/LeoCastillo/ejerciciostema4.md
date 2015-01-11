#Ejercicio 1#

##Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.##

Para instalar LXC ejecutamos el siguiente comando:

~~~
sudo apt-get install lxc
~~~

Para comprobar que se puede usar este tipo de container ejecutamos:

~~~
lxc-checkconfig
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio1_1.png)


#Ejercicio 2#

##Comprobar qué interfaces puente se han creado y explicarlos.##

Se genera un puente de red preconfigurado:


![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio2_1.png)


#Ejercicio 3#

##1.Crear y ejecutar un contenedor basado en Debian.##

Creamos un contenedor en debian, para ello ejecutamos el siguiente comando: 

~~~
sudo lxc-create -t debian -n una-caja
~~~

Comprobamos que el contenedor se ha creado:

~~~
sudo lxc-ls
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio3_1.png)

##2.Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.##

Creamos el contenedor con el siguiente comando: 

~~~
sudo lxc-create -t fedora -n cont-fedora
~~~

Lo iniciamos:

~~~
sudo lxc-start -n cont-fedora
~~~


![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio3_2.png)


#Ejercicio 4#
##1. Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.##

Para instalar lxc-webpanel utilizamos el siguiente comando:

~~~
wget http://lxc-webpanel.github.io/tools/install.sh -O - | sudo bash
~~~

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio4_1.png)

Una vez instalado accedemos a través del navegador poniendo la dirección localhost:5000/login 

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio4_2.png)

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio4_3.png)

##2. Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.##

Le damos al contenedor y nos aparecen los recursos que podemos restringir:

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio4_4.png)

#Ejercicio 5#
##1. Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.##

Voy a comparar un contenedor ubuntu instalado anteriormente con una jaula creada en el tema anterior. Para ello voy a utilizar *Apache Benchmark*

Ejecutamos el siguiente comando en la jaula y en el contenedor:

~~~
sudo apt-get install apache2-utils
~~~

Ahora en la jaula ejecutamos el comando:

~~~
ab -n 1000 -c 25 http://127.0.0.1/
~~~

Y vemos los resultados.

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio5_1.png)

Ahora hacemos lo mismo en el contenedor:

![Sin titulo](https://github.com/leocm89/GII-2014/blob/master/ejercicios/LeoCastillo/Imagenes/Tema4/ejercicio5_2.png)

