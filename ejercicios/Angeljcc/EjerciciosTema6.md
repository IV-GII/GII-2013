# Tema Virtualización completa: uso de maquinas virtuales.

- - -


#### Ejercicio 1:
######_Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización._ 




-----


#### Ejercicio 2
###### _1.Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo)._

###### _ 2. Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels._


- - -

#### Ejercicio 3
###### _Crear un benchmark de velocidad de entrada salida y comprobar la diferencia entre usar paravirtualización y arrancar la máquina virtual simplemente con `qemu-system-x86_64 -hda /media/Backup/Isos/discovirtual.img`_


- - -

#### Ejercicio 4
###### _Crear una máquina virtual Linux con 512 megas de RAM y entorno gráfico LXDE a la que se pueda acceder mediante VNC y ssh._


- - -

#### Ejercicio 5
###### _Crear una máquina virtual ubuntu e instalar en ella un servidor nginx para poder acceder mediante web._


- - -

#### Ejercicio 6
###### _Usar juju para hacer el ejercicio anterior._




