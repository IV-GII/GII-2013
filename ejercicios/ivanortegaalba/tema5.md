# TEMA 5: Virtualización ligera usando contenedores

## Ejercicio 1
TEMA 5: Virtualización del almacenamiento
Sesión 9-12-2014

Ejercicio 1

¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?
Tengo 2 particiones en un Mac book pro:
- Una donde tengo instalado Linux con 30 GB asignados
- Otra donde tengo macos con 90GB
- Tengo dos particiones extra para el boot y el swap de linux


Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.

xStack Storage® Almacenamiento iSCSI SAN con 8 bahías
DSN-2100-10
Capacidad de hasta 8 discos duros SATA/SATA-II de 3.5” , de cualquier capacidad para un total de 16TB actualmente
Potente diseño SoC (System-on-a-Chip) capaz de manejar hasta 80.000 operaciones de entrada y de salida por segundo.
Bahías para discos duros SATA cambiables en funcionamiento
4 puertos Gigabit Ethernet con soporte de agregación de enlace 802.3ad
Batería para conservar los contenidos de la memoria caché de hasta 4GB
Soporte para configuraciones HDD RAID 0/1/1+0/5 HDD
Fácil gestión a través del gestor de dispositivos IP-SAN basado en web

Ejercicio 2: Usar FUSE para acceder a recursos remotos como si fueran ficheros locales.
Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.

Vamos a necesitar 2 máquinas y comprobamos que no hay instancia de FUSE:

```
lsmod | grep fuse depmod -A.

```

```
 depmod -A.

```
