###Ejercicio6

**Instalar juju.**

Vamos a instalar juju y para ello utilizamos los siguientes comandos:

<pre>sudo add-apt-repository ppa:juju/stable
sudo apt-get update && sudo apt-get install juju-core</pre>

![](./img/6.1)

**Usándolo, instalar MySQL en un táper.**

Ahora vamos a hacer el inicio, cambiamos el entorno para trabajar con el a local e instalamos mongodb.

![](./img/6.2)

Tras esto, se crea el táper y se instala el servicio con estos dos comandos:

<pre>sudo juju bootstrap
juju deploy mysql</pre>
