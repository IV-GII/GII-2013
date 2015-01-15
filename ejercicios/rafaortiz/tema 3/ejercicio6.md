#Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar. 
Primero descargamos jailkit de su pag oficial, ejecutamos los comando como viene en los ejemplos.
	./configure && make && sudo make install

Despues creamos un directorio para la jaula y ponemos a root como propietario
	mkdir -p /home/jaulas/dorada
	chown -R root:root /home/jaulas/dorada

Iniciamos jailkit en el directorio y creamos la jaula
	jk_init -v -j /home/jaulas/dorada jk_lsh basicshell netutils editors
![Imgur](http://i.imgur.com/QCImYAL.png)
Creamos el usuario en el sistema y luego lo añadimos a la jaula
	sudo adduser enjaulado
	sudo jk_jailuser -m -j /home/jaulas/dorada enjaulado
![Imgur](http://i.imgur.com/G1jKVpF.png)
Y cambiamos su shell en /home/jaulas/dorada/etc/passwd por /bin/bash
![Imgur](http://i.imgur.com/ImBMAyb.png)

