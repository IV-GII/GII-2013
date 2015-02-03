###Ejercicio 1: Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback

Creamos el directorio:

	mkdir -p /mnt/nombre_imagen

y a continuación:

    mount -o loop -t nombre_imagen nombre_imagen.iso /mnt/nombre_imagen
