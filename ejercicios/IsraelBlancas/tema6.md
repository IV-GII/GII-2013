Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 6: Virtualización completa: uso de máquinas virtuales#


##Sesión 15-12-2014##

##Ejercicio 1##

#####Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.#####

Yo ya lo tenía instalado. Tengo también alguna máquina virtual creada

![virsh](http://fotos.subefotos.com/af0da3c11972578bf17b6be063f49332o.jpg)



***

##Ejercicio 2##

#####1. Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).#####
#####2. Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.#####

He creado una máquina virtual con ttyLinux:

+ [He descargado la imagen de la web oficial ](http://ttylinux.net/Download/ttylinux-pc_x86_64-16.1.iso.gz)
+ He creado un nuevo disco virtual con ``qemu-img create -f qcow2 fichero-cow.qcow2 10000M``
+ He arrancado la máquina virtual desde la imagen para instalarla en el disco con ``qemu-system-x86_64 -hda fichero-cow.qcow2  -cdrom ttylinux-pc_x86_64-16.1.iso``


![Máquina ttyLinux](http://fotos.subefotos.com/87ed9babd5f66b897ccbb0630558f053o.jpg)

Con Debian:

+ [He descargado la imagen de la web oficial ](http://cdimage.debian.org/debian-cd/7.7.0/amd64/iso-cd/debian-7.7.0-amd64-netinst.iso)
+ He creado un nuevo disco virtual con ``qemu-img create -f qcow2 fichero-cow2.qcow2 10000M``
+ He arrancado la máquina virtual desde la imagen para instalarla en el disco con ``qemu-system-x86_64 -hda fichero-cow.qcow2  -cdrom debian-7.7.0-amd64-netinst.iso``

![Máquina Debian](http://fotos.subefotos.com/235d942d5e96ad64243c39fb52736e23o.jpg)


Y con SliTaz:

+ [He descargado la imagen de la web oficial ](http://mirror.slitaz.org/iso/4.0/slitaz-4.0.iso)
+ He creado un nuevo disco virtual con ``qemu-img create -f qcow2 fichero-cow3.qcow2 10000M``
+ He arrancado la máquina virtual desde la imagen para instalarla en el disco con ``qemu-system-x86_64 -hda fichero-cow3.qcow2  -cdrom slitaz-4.0.iso``

![Máquina SliTaz](http://fotos.subefotos.com/4095c369f36ddeb84ba5249d3559a7d8o.jpg)


El otro hipervisor que he utilizado es VMWare

+ [Se descarga de la web oficial](https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/7_0) (se puede utilizar siempre y cuando no sea para uso comercial)
+ Se instala, ejecutando ``sh VMware-Player.bundle``
+ Se abre y se mostrará esta ventana

![VMWare](http://fotos.subefotos.com/8e95cf82a84cf2f40782f97872af7ae1o.jpg)

+ Pulsamos sobre "Create a new virtual machine" y se nos abrirá un asistente como este. Deberemos seleccionar el fichero de imagne desde el que queramos instalar.

![VMWare asistente](http://fotos.subefotos.com/a421ad7b5d8b95b2d97a30f70ffa5721o.jpg)

+ Al darle a siguiente, elegimos el tipo de SO que vamos a instalar. Depués, elegiremos dónde queremos guardar nuestra máquina virtual

![VMWare donde instalar](http://fotos.subefotos.com/40932590d54945e50ca42e624459356eo.jpg)

+ Crearemos un nuevo disco virtual, seleccionando tamaño y tipo de almacenamiento (un fichero solo o varios)

![VMWare disco](http://fotos.subefotos.com/f417baf20676304f45667dbe76dd707eo.jpg)

+ Finalmente, iniciamos la máquina virtual

![VMWare player](http://fotos.subefotos.com/87608958451b8ac10c111a0d93e3eb1fo.jpg)
