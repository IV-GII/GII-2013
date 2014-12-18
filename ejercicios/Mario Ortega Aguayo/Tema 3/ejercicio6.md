###Ejercicio6

**Crear una jaula y enjaular un usuario usando jailkit, que previamente se habrá tenido que instalar.**

En primer lugar descargarmos el paquete jailkit-2.17.tar.gz y lo descomprimimos en la el directorio que deseemos.
A continuación, vamos a proceder a ejecutarlo y compilarlo con los siguientes comandos secuencialmente:


<pre>cd jailkit-2.17/
./configure
make
sudo make install</pre>

Para enjaular un usuario, en primer lugar lo creamos:

<pre>sudo adduser usuario</pre>

A continuacion ejecutamos la siguiente orden, que es la que lo va a enjaular en la maquina virtual creada anteriormente:

<pre>sudo jk_jailuser -m -j /media/jaula/debian_sid/ usuario</pre>

Y por ultimo le asignamos una password al nuevo usuario enjaulado:

<pre>sudo passwd usuario</pre>
