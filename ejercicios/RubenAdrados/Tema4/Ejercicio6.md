###Ejercicio6

**Instalar juju.**

Introducimos los siguientes comandos:

<pre>sudo add-apt-repository ppa:juju/stable
sudo apt-get update && sudo apt-get install juju-core</pre>

Una vez instalado ya solo queda ejecutar **juju init**, de esta forma se crearan los archivos de configuración.

**Usándolo, instalar MySQL en un táper.**

Para instalar la base de datos primero cambiamos al entorno local en caso de que no lo estemos (juju switch local) y ejecutamos:

<pre>sudo apt-get install mongodb-server</pre>

A continuación creamos el táper:

<pre>juju bootstrap
juju deploy mysql</pre>

Para ver el estado ejecutamos:

<pre>juju status</pre>

![](./img/img8.png) 
