
####Ejercicio 1: Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback

Primero debemos hacer la copia de la imagen del CD que tengamos insertado. Para ello, utilizamos la siguiente orden:

	dd if=/dev/cdrom of=cdrom.iso bs=512
    
Donde /dev/cdrom es el lugar donde está montado nuestro CD (por defecto es esa ruta), y cdrom.iso es el nombre de la iso creada.

Ahora, creamos el espacio de nombres (como root):

	unshare --mount /bin/bash 

Y montamos la imagen de disco que hemos creado (con el nombre cdrom.iso)

	mount -o loop disk.iso /mnt/disk
    
De esta forma, la imagen queda montada y solamente es accesible desde esta terminal. Si abrimos otra terminal, no es posible acceder a la imagen montada (ya que no comparte el mismo espacio de nombres)