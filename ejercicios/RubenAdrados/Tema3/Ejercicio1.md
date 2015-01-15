###Ejercicio1

[ServerFault]:http://serverfault.com/questions/198135/how-to-mount-an-iso-file-in-linux

**Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en [ServerFault] nos explican como hacerlo, usando el dispositivo loopback**

En primer lugar, vamos a **crear un espacio de nombres** con el siguiente comando:

<pre> sudo unshare -m /bin/bash </pre>

Al tratarse de un montaje tenemos que especificarlo con la opción **-m**.

Creamos el punto de montaje.

<pre>mkdir -p /mnt/disco</pre>

A continuación, **montamos la imagen** en el puto de montaje anterirmente creado.

<pre>mount -o loop debian-7.2.0-ia64-DVD-1.iso /mnt/disco</pre>