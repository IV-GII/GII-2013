# Tema 3
## Ejercicio 1
Empezamos creando el nuevo espacio de nombres

```
sudo unshare -u /bin/bash
```
Posteriormente le damos nombre al hostname.

```
hostname iv-mount
```

![1](images/Captura de pantalla 2014-11-23 a las 1.09.25.png)

Ya tenemos nuestro espacio de nombres, ahora podemos proceder a montar la imagen. Nosotros vamos a montar una que teníamos de Lubuntu.

Basta con usar el comando:

```
mount -o loop mini.iso /mnt/lubuntu-iv
```
Y nos montará nuestra imagen en el directorio lubuntu-iv

![](images/Captura de pantalla 2014-11-23 a las 1.09.56.png)

Podemos comprobarlo listando /mnt

![](images/Captura de pantalla 2014-11-23 a las 1.10.17.png)

## Ejercicio 2

1. Mostrar los puentes configurados en el sistema operativo.
Para mostrar los puentes, basta con ejecutar la orden

```
brctl show
```
Y como podemos ver no se muestra ninguno en este momento, ya que no tenemos ningun software de virtualización en este momento.
![](images/Captura de pantalla 2014-11-24 a las 10.02.21.png)

2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Para crear una nueva interfaz virtual, basta con usar el comando

```
sudo brctl addbr iv-bridge
```

Y ya tendremos una nueva interfaz de puente, sin asignar a ninguna otra interfaz.
![](images/Captura de pantalla 2014-11-24 a las 10.06.04.png)
Este será el siguiente paso, y ejecutaremos:
```
sudo brctl addif iv-bridge eth0
```
Y quedará asignado a la interfaz Ethernet 0 de nuestro pc, ya que no disponemos de wlan. Como podemos ver, la interfaz se muestra como master de nuestro punete asociado:
![](images/Captura de pantalla 2014-11-24 a las 10.07.42.png)
Y si visualizamos los puentes de los que consta nuestro SO vemos:
![](images/Captura de pantalla 2014-11-24 a las 10.08.47.png)

## Ejercicio 3
1. Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

Primeramente instalamos Debootstrap con:

```
ivan@ivan-VirtualBox:~$ sudo apt-get install debootstrap
```
Creamos nuestra jaula con la versión de Linux saucy, por probar la misma del guión:
```
ivan@ivan-VirtualBox:~$ sudo debootstrap --arch=amd64 saucy /home/jaulas/saucy/ http://archive.ubuntu.com/ubuntu
  I: Retrieving Release
  [...]
  I: Base system installed successfully.
```
Con esto ya tenemos nuestro sistema creado.
2. Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.

Desde la distro Debian instalamos Rinse:
```
ivan@ivan-VirtualBox:~$ sudo apt-get install rinse
```
Ahora creamos nuestro entorno Fedora igual que antes:
```
sudo rinse --arch=amd64 --distribution fedora-core-6 --directory /home/jaulas/fedora/
  [...]
  Installed: dhclient.x86_64 12:3.0.5-5.fc6
  Cleaning up
  Final tidy...
  Installation complete.
```
## Ejercicio 4

Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.
