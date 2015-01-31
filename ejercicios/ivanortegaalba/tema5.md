# TEMA 5: Virtualización ligera usando contenedores

## Ejercicio 1

#### ¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?
Tengo 2 particiones en un Mac book pro:
- Una donde tengo instalado Linux con 30 GB asignados
- Otra donde tengo macos con 90GB
- Tengo dos particiones extra para el boot y el swap de linux


#### Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.

xStack Storage® Almacenamiento iSCSI SAN con 8 bahías
DSN-2100-10
Capacidad de hasta 8 discos duros SATA/SATA-II de 3.5” , de cualquier capacidad para un total de 16TB actualmente
Potente diseño SoC (System-on-a-Chip) capaz de manejar hasta 80.000 operaciones de entrada y de salida por segundo.
Bahías para discos duros SATA cambiables en funcionamiento
4 puertos Gigabit Ethernet con soporte de agregación de enlace 802.3ad
Batería para conservar los contenidos de la memoria caché de hasta 4GB
Soporte para configuraciones HDD RAID 0/1/1+0/5 HDD
Fácil gestión a través del gestor de dispositivos IP-SAN basado en web

## Ejercicio 2
#### Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.

Vamos a necesitar 2 máquinas y comprobamos que no hay instancia de FUSE:

```
lsmod | grep fuse
```
y
```
depmod -A
```
Lo instalaremos en las dos máquinas.

En la máquina invitada vamos a crear una carpeta y la montaremos con sshfs:
```
sshfs ivanortegaalba@192.168.78.128:/home/ivanortegaalba/prueba-IV /home/ivanortegaalba/prueba-IV
```
Si se ha hecho correctamente, ya tendremos en nuestra máquina el enlace.

## Ejercicio 3
#### Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre.

Instalamos Qemu con el comando:
```
sudo apt-get install qemu-system
```
Ahora creamos la imagen con:

```
qemu-img create -f qcow2 cow.qcow2 10M
```
Y posteriormente montamos el VMDK:
```
sudo losetup -v -f cow.qcow2
```
Y asociamos al dispositivo de bloque:
```
sudo mkfs.ext4 /dev/loop0:
```
