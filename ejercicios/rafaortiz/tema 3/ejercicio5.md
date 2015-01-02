#Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.
Usando el ubuntu del ejercicio anterior usarlo como jaula y instalar en el nginx.

sudo chroot /home/jaulas/utopic
sudo apt-get install nginx
![Imgur](http://i.imgur.com/6sY2twT.png)
una vez instalado en mi caso habia otro proceso en el puerto 80 lo cerre con
sudo fuser -k 80/tcp
y despues inicias nginx y listo
sudo service nginx start
![Imgur](http://i.imgur.com/ms5OmJA.png)

