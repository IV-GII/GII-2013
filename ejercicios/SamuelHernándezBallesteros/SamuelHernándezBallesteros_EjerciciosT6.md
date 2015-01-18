# Tema 6: Virtualización completa: uso de máquinas virtuales.

##Ejercicio 1
Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.

He instalado KVM con los siguientes comandos:

Instalar en debían KVM, las librerías de administración Libvirt:

	sudo apt-get install qemu-kvm libvirt-bin virtinst kvm virt-viewer

	sudo adduser samuel kvm

	sudo modprobe kvm-amd

Preparar la configuración de red para que los futuros guests tengan conectividad entre el host y los guest.
Entramos en la consola y escribimos:

	sudo nano /etc/network/interfaces

Les podría salir algo similar a lo siguiente:

    auto eth0
    iface eth0 inet dhcp

Escribimos lo siguiente:

    auto br0
    iface br0 inet dhcp
    bridge_ports eth0
    bridge_stp off
    bridge_maxwait 5

Ahora guardamos los cambios (Control + o) y luego lo cerramos (Control + x). Antes de crear una máquina virtual debemos reiniciar el sistema. Escribimos en la consola:

sudo reboot


##Ejercicio 2
Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).

Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.

##Ejercicio 3
Crear un benchmark de velocidad de entrada salida y comprobar la diferencia entre usar paravirtualización y arrancar la máquina virtual simplemente con:

	qemu-system-x86_64 -hda /media/Backup/Isos/discovirtual.img


##Ejercicio 4
Crear una máquina virtual Linux con 512 megas de RAM y entorno gráfico LXDE a la que se pueda acceder mediante VNC y ssh.

##Ejercicio 5
Crear una máquina virtual ubuntu e instalar en ella un servidor nginx para poder acceder mediante web.

##Ejercicio 6
Usar juju para hacer el ejercicio anterior.

##Ejercicio 7
Instalar una máquina virtual con Linux Mint para el hipervisor que tengas instalado.