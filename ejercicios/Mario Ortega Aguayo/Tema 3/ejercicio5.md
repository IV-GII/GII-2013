###Ejercicio5

**Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.**

Accedemos a la jaula creada anteriormente con el comando ya utilizado:

<pre>sudo chroot .</pre>

Una vez dentro de nuestra jaula chroot y asegurandonos de haber montado anteriormente /proc, procedemos a instalar nginx mediante el siguiente comando:

<pre>apt-get install nginx</pre>

Podemos comprobar que nginx funciona correctamente ejecutando:

<pre>service nginx start</pre>
