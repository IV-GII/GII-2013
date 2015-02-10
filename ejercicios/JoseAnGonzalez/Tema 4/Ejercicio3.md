#Ejercicio 3

#### 1. Crear y ejecutar un contenedor basado en Debian.

Creamos el contenedor mediante la orden:

	sudo lxc-create -t debian -n minidebian
    
Una vez creado el contenedor, lo iniciamos:

	sudo lxc-start -n minidebian
    
Y vemos como accedemos al contenedor como root.

#### 2. Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.


Creamos el contenedor con gentoo, y lo iniciamos:

	sudo lxc-create -t gentoo -n minigentoo
	sudo lxc-start -n minigentoo

