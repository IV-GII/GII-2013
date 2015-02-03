###Ejercicio2

**1. Mostrar los puentes configurados en el sistema operativo.**

**2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.**

En mi caso no hay ningun puente asi que lo creamos.

<pre>sudo brctl addbr puente</pre>

Y por ejemplo lo añadimos a nuestra interfaz eth0.

<pre>sudo brctl addif puente eth0</pre>

A continuación mostramos el puente:

<pre>brctl show</pre>

![](./img/img1.png)