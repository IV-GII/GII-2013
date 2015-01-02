###Ejercicio3

**1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.**

**2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.**

1.He instalado en mi máquina un debian ligero como maquina vitual a través de **debootstrap**. Este va a **virtualizar un sistema de ficheros** en nuestra maquina local. La herramienta debootstrap ya estaba instalada por defecto en mi version Linux. He utilizado las siguientes ordenes:

En primer lugar, elegimos la carpeta donde se va a ubicar. En mi caso **/media/jaula1**, por tanto creamos el directorio:

<pre>sudo mkdir debian_sid</pre>

Una vez creado ejectamos la siguiente orden, la cual **descargará en nuestro directorio la maquina virtual:**

<pre>sudo debootstrap sdi .</pre>

2.Primero instalamos la herramienta **Rinse** con el comando:

<pre>sudo apt-get install rise</pre>

Despues, nos situamos en la carpeta **/media/jaula2** y ejecutamos el siguiente comando:

<pre>sudo rinse --arch i386 --distribution fedora-core-7 --directory /media/jaula2</pre>

De esta forma, tenemos otra forma de virtualizar igual que debootstrap.
