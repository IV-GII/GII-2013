##Tema 4:

###Ejercicio 1:

Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

Instalamos lxc con:

````sudo apt-get install lxc````

<img src="http://i57.tinypic.com/28as5di.jpg"/>

Para comprobar la versión:

````lxc-checkconfig````

<img src="http://i60.tinypic.com/69dizm.jpg"/>

###Ejercicio 2:

Comprobar qué interfaces puente se han creado y explicarlos.

Para ver los interfaces puentes se usa el comando:

````sudo brctl show````

<img src="http://i59.tinypic.com/28u1suu.jpg"/>

Dado que he usado una nueva imagen de ubuntu ya que la tenia demasiado sucia la anterior, solo muestra el lxcbr0 del programa lxc.

###Ejercicio 3:

1. Crear y ejecutar un contenedor basado en Debian.

Primero creamos el contenedor con:

````sudo lxc-create -t debian -n caja-debian````

Arrancamos el contenedor:

````sudo lxc-start -n caja-debian````

<img src="http://i62.tinypic.com/3340wsk.jpg"/>

2. Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.

Para ver los templates que tenemos ponemos el comando:

````ls /usr/lib/lxc/templates/````

OpenSuse me pide zypper, y los demas tambien me dan errores asi que voy a usar el script del Gentoo, le damos permisos de ejecucion y lo pasamos a la carpeta de templates (Hay que configurar tambien el archivo config del lxc)

````sudo lxc-create -t gentoo -n caja-gentoo````

Y para ejecutar como siempre:

````sudo lxc-start -n caja-gentoo````

Al final he instalado debian y busybox.

####Ejercicio 4:

1. Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.

Estando como root ejecuto lo siguiente:

````wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash````

<img src="http://i57.tinypic.com/4t9jdv.jpg"/>

En el navegador ponemos localhost:5000 y nos pide usuario y contraseña: admin admin

<img src="http://i59.tinypic.com/2qbx0u8.jpg"/>

2. Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

<img src="http://i59.tinypic.com/2ur0cn4.jpg"/>

