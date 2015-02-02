###Ejercicio4

**Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.**

Para este ejercicio he utilizado una instalación a partir de debootstrap de debian en su version ligera sid.
Para el acceso a ella ejecutamos el comando chroot, si ejecutamos posicionados en el directorio donde se encuentra nuestra maquina virtual:

<pre>sudo chroot .</pre>

Una vez dentro de nuestro sistema, intentamos hacer top, pero, como en la siguiente imagen podemos ver, no esa montado /proc.

![](./img/4.1)

Por tanto, vamos a montarlo mediante el siguiente comando:

<pre>mount -t proc proc /proc</pre>

Una vez configurado, podemos ejecutar sin problema el comando top.

![](./img/4.2)
