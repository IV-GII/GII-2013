# Virtualización del almacenamiento. 

## Tema 5.

**Ejercicio 1.** 

¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?

Haciendo uso del comando ``sudo lsblk -fm ```

<a href="http://es.tinypic.com?ref=zu45qx" target="_blank"><img src="http://i61.tinypic.com/zu45qx.png" border="0" alt="Image and video hosting by TinyPic"></a>

1.2. Buscar ofertas SAN comerciales y comparar su precio con ofertas locales (en el propio ordenador) equivalentes.

Observamos las opciones que se muestran a continuación:

IBM Storwize V3700 SFF Dual Control. Precio: 3,482.40 euros.

HP P2000 G3 iSCSI MSA 2-cntrl SFF Array. Precio: 5,929.20. euros.

Vemos que se trata de precios elevados, pero hay que tener en cuenta que, a parte del rendimiento, sería complicado montar máquinas con esas configuraciones a modo de ordenador convencional. Sería casi imposible alcanzar las mismas tasas de eficiencia con controladoras convencionales dedicadas en un ordenador común. Otros aspectos a tener en cuenta son la capacidad de refrigeración y expansión, ya que hablamos de Racks con grandes arrays de discos que además permiten hot swapping y redundancia de alimentación en algunos casos.

**Ejercicio 2.**  Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.

**Ejercicio 3.** Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre.

En primer lugar tenemos que instalar herramientas qemu para ello ejecutamos: 

```sudo apt-get install qemu-system ```

Usamos qemu-img: ```qemu-img create -f qcow2 cow.qcow2 10M``` y a continuación montamos el VMDK:
``` sudo losetup -v -f cow.qcow2```

```sudo mkfs.ext4 /dev/loop0```

<a href="http://es.tinypic.com?ref=2ezplrs" target="_blank"><img src="http://i58.tinypic.com/2ezplrs.png" border="0" alt="Image and video hosting by TinyPic"></a>

**Ejercicio 4.** Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema.

Procedemos a instalar las herramientas necesaria para poder llevar a cabo la realización del ejecicio.

```sudo mkfs.ext4 /dev/loop0```

Creamos las imagenes: ```sudo qemu-img create -f raw  a.img 300M```  y ```sudo qemu-img create -f raw  b.img 300M```



**Ejercicio 5.** Instalar ceph en tu sistema operativo.

La instalación se realiza con el comando:

```sudo apt-get install ceph-mds```

**Ejercicio 6.** Crear un dispositivo ceph usando BTRFS o XFS.

**Ejercicio 7.** Almacenar objetos y ver la forma de almacenar directorios completos usando ceph y rados.

**Ejercicio 8.** Tras crear la cuenta de Azure, instalar las herramientas de línea de órdenes (Command line interface, cli) del mismo y configurarlas con la cuenta Azure correspondiente.

**Ejercicio 9.** Crear varios contenedores en la cuenta usando la línea de órdenes para ficheros de diferente tipo y almacenar en ellos las imágenes en las que capturéis las pantallas donde se muestre lo que habéis hecho.



