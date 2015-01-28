#Tema 5
###Ejercicio 1
#####1. ¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?

Para ver la configuracion de mi disco duro he utilizado el comando:
	
 ``` bash
 sudo lsblk -fm
 ```
 ![1](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/tema5-1.png)

#####2. Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?

Utiliza la particion U

#####3. Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.

La comparacion es la siguiente: 

[AM866B HP 8/8 Base (0) e-port SAN Switch](http://www.senetic.es/product/AM866B?gclid=CjwKEAiAi52mBRDkq5bX0vq1-RQSJAAq_7IGEvUX7fVBH0xfzvDw8xK5cqGhJoz3noK0Dy-eVPTLPBoC-ZPw_wcB)

- Precio: 2007,05 €
- 8 puertos SFP
- Puerto consola RS-232
- Tecnologia de cableado ethernt de cobre 100BASE-T
- 1 puerto fastEthernet
- 8 Gbits/s de capacidad de computacion
- Montaje Rack

[AP881A HP StorageWorks D2200sb PCIe and P4000 VSA Bundle with Smart Array Adv Pk LTU](http://www.senetic.es/product/AP881A)

- Precio: 4284,00 €
- 12 unidades de almacenamiento compatibles
- 10,8 TB de capacidad maxima de almacenamiento permitida
- Interfaz de unidad de almacenamiento

###Ejercicio 2

#####Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.