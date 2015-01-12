##Ejercicios Tema 5. [Francisco Javier Expósito Cruz](http://github.com/franexposito)

##Virtualización del almacenamiento
###Ejercicio 1.
#####Apartado 1.
Mi disco duro tiene las siguientes particiones:  

![t5e1_a](imagenes/t5e1_a.png)  

Comparación entre SAN:  

[HP P2000 G3 SAS MSA Dual Cntrl SFF Array](http://www.misco.co.uk/product/197626/HP-P2000-G3-SAS-MSA-Dual-Cntrl-SFF-Array?selectedTabIndex=2&tabBarViewName=ProductTechnicalSpecifications&page=1&#tabs)

* Precio: 5.254€
* Interfaz: 2 x SAS 6Gb/s - 26 pin 4x Shielded Mini MultiLane SAS (SFF-8088), 2 x management, 2 x management - RJ-45, 8 x SAS 6Gb/s  
* Expansión: 24 (total) / 24 (free) - 2.5" SFF - hot-swap  
* Max Supported Capacity 24 TB  
* Maximum LUNs	512  
* HDD Array External Interface	SAS 6Gb/s  

[IBM Storwize V3700 SFF Dual Control Enclosure](http://www.misco.co.uk/product/205412/IBM-Storwize-V3700-SFF-Dual-Control-Enclosure?selectedTabIndex=2&tabBarViewName=ProductTechnicalSpecifications&page=1&#tabs)  

* Precio: 3.651,9€  
* Expansión: 24 (total) / 24 (free) - 2.5" - hot-swap  
* Max Supported Capacity	24 TB  
* HDD Array External Interface	iSCSI  


###Ejercicio 2.
Para ello ejecutaremos el siugiente comando:  

  sshfs franexp@192.168.56.101:/home/franexp/IV /home/franexp/IV  

![t5e2_a](imagenes/t5e2_a.png)  

Comprobamos que se montó correctamente:  

![t5e2_b](imagenes/t5e2_b.png)  


###Ejercicio 3.
En primer lugar ejecutamos los siguientes comandos:  

```
sudo qemu-img create -f qcow2 cow.qcow2 10M
sudo losetup -v -f cow.qcow2
```  

[t5e3_a](iagenes/t5e3_a.png)

Y finalmente:  

```
sudo mkfs.ext4 /dev/loop0
```

[t5e3_b](imagenes/t5e3_b.png) 
