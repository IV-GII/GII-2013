###Ejercicio1

**Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback**

En primer lugar, vamos a crear un espacio de nombres con el siguiete comando:

<pre> sudo unshare -m /bin/bash </pre>

Especificamos la opcion -m ya que va a ser montaje.

Una vez hecho esto, vamos a situarnos en la carpeta donde se encuentra la iso que queremos montar y creamos el punto de montaje necesario.

<pre>mkdir -p /mnt/disco</pre>

A continuación, montamos la imagen en el directorio especificado anteriormente con la siguiente instrucción.

<pre>mount -o loop debian-7.2.0-ia64-DVD-1.iso /mnt/disco</pre>
