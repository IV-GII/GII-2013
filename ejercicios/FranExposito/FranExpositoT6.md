##Ejercicios Tema 6. [Francisco Javier Expósito Cruz](http://github.com/franexposito)

##Virtualización completa: uso de máquinas virtuales
###Ejercicio 1.

```
sudo apt-get install qemu-kvm
sudo apt-get install qemu-system
```

###Ejercicio 2.
Dado que KVM es un módulo del kernel, puede que no esté cargado por defecto. Dependiendo del procesador que usemos, lo cargamos con:  

```
sudo modprobe kvm-intel
```

Nosotros debemos primeramente crear la imagen donde queremos que se vaya a instalar el sistema operativo. La única propiedad que es necesaria para crear la imagen es el tamaño de esta, debemos especificar el tamaño que ocupará esa imagen.  

Una vez que se termina la instalación, solo falta "encender" la máquina virtual que ya se ha instalado, debemos ejecutar el siguiente comando:  

```
qemu -hda maquina.img -m 256 -boot c
```

###Ejercicio 3.


###Ejercicio 4.
Creamos la imagen:  

```
qemu-img create kvm/mint.img 8G //linux mint exige minimo 8gb
```

Lanzamos la instalación con la opcion -m 512

```
qemu -hda kvm/mint.img -cdrom /home/franvalverde/Descargas/linuxmind-16-kde.iso -boot d -m 512
```
