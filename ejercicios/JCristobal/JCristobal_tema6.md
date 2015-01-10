#Ejercicios de JCristobal (José Cristóbal López Zafra)

# Tema 6

[Enlace al tema](http://jj.github.io/IV/documentos/temas/Uso_de_sistemas)


##Ejercicio 1
###Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.

Primero volvemos a comprobar que podemos ejecutar VKM con `kvm-ok` y una vez confirmado (ya estaba instalado de otro tema) vemos el listado de máquinas virtuales ya instaladas con `sudo virsh list --all`

![imagen](http://i.imgur.com/OnbcMEL.png) 


##Ejercicio 2
###Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).

Primero instalamos Debian:

Creamos un disco duro virtual en formato QCOW2 con `qemu-img create -f qcow2 imagenAct2.qcow2 3G`

Y arrancamos KVM para instalar el sistema `qemu-system-x86_64 -hda ./imagenAct2.qcow2 -cdrom ./debian-7.7.0-amd64-netinst.iso`

![imagen](http://i.imgur.com/4jIkbBO.png) 


Y ahora con SliTaz:

Nos descargamos una imagen SliTaz desde [el enlace de su página](mirror.slitaz.org/iso/4.0/slitaz-4.0.iso)

Y volvemos a crear un disco duro: `qemu-img create -f qcow2 imagen2Act2.qcow2 10000M`

Arrancamos KVM : `qemu-system-x86_64 -hda imagen2Act2.qcow2 -cdrom slitaz-4.0.iso`

Pasamos al arranque automático:

![imagen](http://i.imgur.com/zVZzpZR.png) 

Y ya lo tenemos (pantallazo mostrando el resultado de la orden `top`):

![imagen](http://i.imgur.com/mRmoLvY.png) 


###Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.

Y usamos el hipervisor [VirtualBox](https://www.virtualbox.org/) para instalar la imagen de SliTaz:

![imagen](http://i.imgur.com/kZPtDv2.png) 

![imagen](http://i.imgur.com/2MF8dOl.png) 






