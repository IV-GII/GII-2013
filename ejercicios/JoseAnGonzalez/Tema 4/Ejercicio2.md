#Ejercicio 2


Tras la instalación de lxc, comprobamos mediante el comando ifconfig que se ha creado la sigguiente interfaz:

> lxcbr0    Link encap:Ethernet  HWaddr 0e:24:67:5c:bf:67  
          inet addr:10.0.3.1  Bcast:10.0.3.255  Mask:255.255.255.0
          inet6 addr: fe80::c24:67ff:fe5c:bf67/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:58 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:0 (0.0 B)  TX bytes:9333 (9.3 KB)
          
          
OTra forma de verlo, es mediante el uso del comando brctl show, donde nos sale ya un puente para el contenedor creado.