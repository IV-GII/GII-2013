###Ejercicio7

**1. Destruir toda la configuración creada anteriormente**

Primero desmontamos el servicio de la base de datos:

<pre>sudo juju destroy-unit mysql/0</pre>

Y a continuación la maquina:

<pre>sudo juju destroy-machine 1</pre>

**2. Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.**

<pre>sudo juju deploy mediawiki
sudo juju deploy mysql</pre>

**3. Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.**

``` sh
#!/bin/bash

juju init
juju switch local 
juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:slave mysql:db
juju expose mediawiki
juju status```