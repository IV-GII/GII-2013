#Tema 6
###Ejercicio 1
#####Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.

Estaba creado en el tema 1

###Ejercicio 2
#####1.Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).

He elegido SliTaz ya que es la imagen las ligera

Creamos un nuevo disco virtual:
```bash
qemu-img create -f qcow2 fichero-cow.qcow2 600M
```
Ahora arrancamos la maquina con la imagen descargada:
```bash
qemu-system-x86_64 -hda fichero-cow.qcow2 -cdrom ~/Escritorio/slitaz-4.0.iso
```
Aqui esta funcionando:
![1](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/1Tema6.png)

#####2.Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.
He utilizado VirtualBox para montar la misma imagen que en el apartado anterior:

![1](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/2Tema6.png)

###Ejercicio 3
#####Crear un benchmark de velocidad de entrada salida y comprobar la diferencia entre usar paravirtualización y arrancar la máquina virtual simplemente con qemu-system-x86_64 -hda /media/Backup/Isos/discovirtual.img