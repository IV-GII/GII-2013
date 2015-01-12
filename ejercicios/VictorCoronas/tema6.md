##TEMA 6

#Virtualización completa: uso de máquinas virtuales

* [+]Ejercicio 1
 - A) Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones.
 Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado 
 para ejecutarlo o hay que conformarse con la paravirtualización.

El primer paso que tenemos que dar es comprobar que nuestro procesador soporta virtualización, para ello usamos el siguiente comando:

    egrep -c '(vmx|svm)' /proc/cpuinfo

Si el resultado es igual a "0" es que no lo soporta, en mi caso es asi ya que lo estoy usando desde una máquina virtual.
[Ver](https://www.dropbox.com/s/kw6c9e26k8y13ny/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2013.11.37.png?dl=0)
Si nos saliese un número ">0", eso siginifica que lo soporta.

Otra alternativa para comprovas es usar "kmv-ok", que te daría información [ver](https://www.dropbox.com/s/o582nhc43dt5r39/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2013.08.29.png?dl=0).

Para saber más informacion sobre los resultados y demás [ver enlace](https://help.ubuntu.com/community/KVM/Installation).

El segundo paso sería proceder a instalar los paquetes necesarios para poder usar "KVM", para ello usamos el siguiente comando:

    sudo apt-get install qemu-kvm qemu-system libvirt-bin virtinst virt-manager

[Ver instalción](https://www.dropbox.com/s/stznyxi0dhihaay/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2013.17.18.png?dl=0)


* [+]Ejercicio 2
 - A) Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD.
Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas
se puede usar CoreOS (que sirve como soporte para Docker) 
GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y 
ttylinux (basado en línea de órdenes solo).

 - B) Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.

* [+]Ejercicio 3
 - A) Crear un benchmark de velocidad de entrada salida y comprobar la diferencia entre usar paravirtualización y arrancar la máquina virtual simplemente con "qemu-system-x86_64 -hda /media/Backup/Isos/discovirtual.img"

* [+]Ejercicio 4
 - A) Crear una máquina virtual Linux con 512 megas de RAM y entorno gráfico LXDE a la que se pueda acceder mediante VNC y ssh.

* [+]Ejercicio 5
 - A) Crear una máquina virtual ubuntu e instalar en ella un servidor nginx para poder acceder mediante web.

* [+]Ejercicio 6
 - A) Usar juju para hacer el ejercicio anterior.

* [+]Ejercicio 7
 - A) Instalar una máquina virtual con Linux Mint para el hipervisor que tengas instalado.
