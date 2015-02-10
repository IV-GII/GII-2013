###Ejercicio1

[GitHub]:https://github.com/lxc/lxc
[sitio web]:https://linuxcontainers.org/lxc/getting-started/

**Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.**

Para realizar la instalación tenemos dos opciones.

- Introduciendo el siguiente comando en la terminal se instalara directamente:

<pre>sudo apt-get install lxc</pre>

- Desde GitHub

<pre>git clone git://github.com/lxc/lxc -b master</pre>

Una vez descargado accedemos al directorio y ejecutamos:

``` sh
./configure
make
make install```
