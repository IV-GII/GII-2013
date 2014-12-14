###Ejercicio5

**Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.**

Usando la el sistema ubuntu creado con anterioridad, accedemos a el e instalamos **nginx**.

<pre>sudo chroot /home/ruben/jaulas/ubuntu</pre>

<pre>apt-get install nginx</pre>

Finalmente solo queda arrancarlo.

<pre>service nginx start</pre>