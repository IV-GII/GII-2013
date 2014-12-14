###Ejercicio6

**Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.**

Siguiendo los apuntes del tema lo primero que hay que hacer es descargar e instalar jailkit.

<pre>./configure && make && sudo make install
cd jailkit-2.17/
./configure
make
sudo make install</pre>

Creamos el sistema de ficheros poseido por root:

<pre>mkdir -p /seguro/jaulas/dorada
chown -R root:root /seguro</pre>

Y a continuación la jaula:

<pre>jk_init -v -j /seguro/jaulas/dorada jk_lsh basicshell netutils editors</pre>

Finalmente creamos un usuario y lo enjaulamos:

<pre>adduser usuario
sudo jk_jailuser -m -j /seguro/jaulas/dorada usuario</pre>