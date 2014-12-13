###Ejercicio7

**Destruir toda la configuración creada anteriormente**

Para destruir la configuración creada anteriormente ejecutamos el siguiente comando, el cual desmonta el servicio mas reciente:

<pre>sudo juju destroy-unit mysql/0</pre>

Y a continuación destrimos la máquina.

<pre>sudo juju destroy-machine 1</pre>


**Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.**


En primer lugar creamos el táper.
<pre>
sudo juju bootstrap
</pre>

Añadimos el servicio de mediawiki.
<pre>
sudo juju deploy mediawiki
</pre>

Añadimos el servicio de mysql.
<pre>
sudo juju deploy mysql
</pre>

Añadimos la relación entre ambos.
<pre>
sudo juju add-relation mediawiki:slave mysql:db
</pre>

Por último expongo el servicio.
<pre>
sudo juju expose mediawiki
</pre>

**Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.**

<pre>
#!/bin/bash

sudo juju bootstrap
sudo juju deploy mediawiki
sudo juju deploy mysql
sudo juju add-relation mediawiki:slave mysql:db
sudo juju expose mediawiki
</pre>
