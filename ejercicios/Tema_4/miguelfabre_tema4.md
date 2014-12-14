#Virtualización ligera usando contenedores

##Ejercicio 1

**Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.**

Procedemos de forma habitual:

```sudo apt-get install lxc```

Comprobamos que nuestra máquina soporta lxc:

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio1-1.png)

##Ejercicio 2

**Comprobar qué interfaces puente se han creado y explicarlos.**

Mostramos los interfaces disponibles con ```ifconfig-a```

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio2-1.png)

Vemos que se ha creado una nueva interfaz de nombre lxcbr0

Usando ```brctl show``` podemos ver si se ha creado el contenedor y si tiene acceso a la red.

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio2-2.png)

##Ejercicio 3:

**1.Crear y ejecutar un contenedor basado en Debian.**
**2.Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.**

En primer lugar, vamos a ejecutar el contenedor Debian, para ello:

```sudo lxc-create -t debian -n debianita```

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio3-1.png)

Para ejecutarlo, procedemos de la siguiente forma:

```sudo lxc-start -n debianita```

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio3-2.png)

La instalación fue exitosa.

Para crear el contenedor CentOS, procedemos igual que antes pero ahora con los siguientes comandos:

Para la creación: ```sudo lxc-create -t centos -n new```
Para la ejecución: ```sudo lxc-start -n new```

##Ejercicio 4:

**1.Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.**
**2.Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.**

Instalamos lxc-webpanel descargando el script de instalación:

```wget http://lxc-webpanel.github.io/tools/install.sh -O - | sudo bash```

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio4-1.png)

Accedemos a través de la dirección local: http://localhost:5000/

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio4-2.png)

Para ver el panel de recursos:

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio4-3.png)

##Ejercicio 6:

**1. Instalar juju.**
**2.Usándolo, instalar MySQL en un táper.**

Para instalarlo ejecutamos:

```sudo add-apt-repository ppa:juju/stable```

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio6-1.png)

```sudo apt-get update```
```sudo apt-get install juju-core```

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio6-2.png)

Para el segundo paso, creamos un nuevo táper (como a juju le gusta)

```juju bootstrap```

Instalamos MediaWiki

```juju deploy mediawiki```

Mediawiki usa mysql, por lo que habrá que instalarlo también:

```juju deploy mysql```

Además, habrá que indicar que mediawiki va a usar precisamente mysql como base de datos:

```juju add-relation mediawiki mysql```

Una vez hecho esto, se tiene que exponer el servicio para que pueda ser usado por el público, lo que implicará que se enganche al servidor web, por ejemplo:

```juju expose mediawiki```

##Ejercicio 7:

**1. Destruir toda la configuración creada anteriormente**
**2. Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.**
**3. Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.**

Para destruir la configuración realizada:

```juju destroy-service mysql``` 
```juju destroy-service mediawiki```
```sudo juju destroy-environment local```

Comprobamos que la eliminación ha sido exitosa:

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio7-1.png)

Volvemos a ejecutar los pasos realizados anteriormente y los resumimos en un script que contendrá:

```juju switch local
sudo juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:db mysql
juju expose mediawiki
echo "Instalación completada"```

##Ejercicio 8:

**Instalar libvirt. Te puede ayudar esta guía para Ubuntu.**

Siguiendo la guía, instalamos libvirt:

```sudo apt-get install kvm libvirt-bin```

Comprobamos que la instalación ha sido exitosa con ```kvm-ok``` y accedemos:

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio8-1.png)

##Ejercicio 10:

**Instalar docker.**

Procedemos de manera habitual:

```sudo apt-get install docker.io```

Comprobamos que ha sido instalado mirando la versión instalada:

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio10-1.png)

##Ejercicio 11:

**1. Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.**
**2. Buscar e instalar una imagen que incluya MongoDB.**

Instalamos como imagen alternativa CentOS, por ejemplo:

```sudo docker pull centos```

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio11-1.png)

Una imagen que incluye MongoDB es "dockerfile/mongodb" (contiene una imagen Ubuntu con MongoDB). Por lo tanto:
 
```docker pull dockerfile/mongodb```

![](https://github.com/miguelfabre/GII-2014/blob/master/ejercicios/Tema_4/imagenes/ejercicio11-2.png)

##Ejercicio 12

**Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.**

* Accedemos al contenedor con  ```sudo docker run -i -t ubuntu /bin/bash```
* Añadimos un nuevo usuario useradd -d /home/miguelfabre -m miguelfabre
* Incluimos la posibilidad de acceder con "sudo" ```adduser miguelfabre sudo```
* Configuramos una nueva contraseña con ```passwd nuevapass```
* Accedemos con el usuario creado ```su miguelfabre```
* Instalamos nginx ```sudo apt-get install nginx```
* Iniciamos el servicio "nginx" ```sudo service nginx start```

##Ejercicio 13

**Crear a partir del contenedor anterior una imagen persistente con commit.**

Para crear una imagen persistente con commit, deberemos:

```sudo docker commit <docker-id> <nombre-imagen>```

Como resultado nos devolerá una nueva ID que será la de la imagen creada.








