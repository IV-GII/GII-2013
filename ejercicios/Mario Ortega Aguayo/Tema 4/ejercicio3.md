###Ejercicio3
**1.Crear y ejecutar un contenedor basado en Debian.**

**2.Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro.**

Para crear un contenedor basado en Debian he optado por instalar Ubuntu. Para dicha instalación ejecutamos el siguiente comando:

<pre>sudo lxc-create -t ubuntu -n cont_ubuntu</pre>

Vemos en la siguiente imagen el proceso de instalación.

![](./img/3.1)

Para ejecutar el contenedor ejecutamos la siguiente instrucción:

<pre>sudo lxc-start -n cont_ubuntu</pre>

Ahora, para el segundo apartado, voy a instalar un contenedor con CentOS, y igual que el apartado anterior, vamos a cambiar los parametros de los comandos adaptándolos a este sistema operativo, por tanto, para la instalación:

<pre>sudo lxc-create -t centos -n cont_centos</pre>

Y para su ejecución:

<pre>sudo lxc-start -n cont_centos</pre>
