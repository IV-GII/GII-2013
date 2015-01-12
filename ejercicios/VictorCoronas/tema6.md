##TEMA 6

#Virtualización completa: uso de máquinas virtuales

* [+]Ejercicio 1
 - A) Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones.
 Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado 
 para ejecutarlo o hay que conformarse con la paravirtualización.

* [+]Ejercicio 2
 - A) Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD.
Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas
se puede usar CoreOS (que sirve como soporte para Docker) 
GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y 
ttylinux (basado en línea de órdenes solo).

- B) Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.

* [+]Ejercicio 3
 - A) Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs 
 para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.
