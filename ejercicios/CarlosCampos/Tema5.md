#Carlos Campos Fuentes
##Virtualización de almacenamiento

###Ejercicio 1

######Mis particiones
Actualmente con el Macbook, solo tengo la particion de sistema operativo, pero cuando usaba Linux, tenia una partición para el boot, raiz y home.

######Ofertas SAN

* [Drobo SAN Array B1200i 12 bahías iSCSI](http://www.bechtle.es/shop/BD_ES-es/Drobo+SAN+Array+B1200i+12+bah%C3%ADas+iSCSI_869939)

  Precio: 4.948,90 € (IVA incluido).  
  Conexiones:	4 Gigabit Ethernet  
  Fuente de alimentación:	2x redundante.  
  Controlador:	Single  
  Garantía del fabricante:	2 años servicio en taller.  

  Bahías sin marco  
  Para máx. 12 discos duros 8,9 cm (3,5") SAS o SATA o 2 a 3 SSD (máx. 9 discos duros).  
  Incluye 2 fuentes de alimentación de 1,8 m, kit de montaje en rack.  

* [D-Link SAN Storage DSN-6110 iSCSI](http://www.bechtle.es/shop/BD_ES-es/D-Link+SAN+Storage+DSN-6110+iSCSI_756649)

  Precio: 4.746,83 € (IVA incluido).  
  Capacidad:	36 GB.  
  Conexiones:	iSCSI.  
  Garantía del fabricante:	3 años servicio en taller.  

  Unidad de disco duro SAN D-Link xStack DSN-6110.  
  Compatibilidad con RAID.  
  12 x Bahías Totales  
  Gigabit Ethernet.  
  2U Montable en Bastidor.  

  ### Ejercicio 2
  Antes de nada, tenemos que comprobar si tenemos cargado **fuse**. Para ello tenemos que ejecutar en una consola:

      lsmod | grep fuse

  En el caso de que nos nos aparezca nada, tenemos que ejecutar:

      modprobe fuse
      depmod -A

  Ahora, instalamos sshfs en las dos máquinas (cliente y servidor) desde la consola a través de apt:  

      sudo apt-get install sshfs

  El siguiente paso a realizar es crear una carpeta en la máquina cliente donde vayamos a montar la remota, para esto:

      mkdir carpeta_remota
      sshfs [usuario_remoto]@[IP]:[carpeta_remota] [punto a montar]
      --
      Por ejemplo: sshfs ccampos@server:Documents carpeta_remota
