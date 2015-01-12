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

El primer paso que debemos de dar es activar el módulo del kernel kvm con el siguiente comando:

    sudo modprobe kvm-intel

Ahora vamos a crear las diferentes máquinas.

El primero que vamos a hacer es con "SliTaz":

 - Primero nos descargamos la imagen de la [página oficial](http://www.slitaz.org/en/get/#stable).
 - Ahora tenemos que crear un nuevo disco virtual con:

    `qemu-img create -f raw SliTaz-hdd.img 100M`
[Ver](https://www.dropbox.com/s/ap2zfs0bs06sm7d/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.21.07.png?dl=0)

 -Por último solo tenemos que arrancar la máquina virtual para instalarla:
 
    `qemu-system-x86_64 -hda ./SliTaz-hdd.img -cdrom ../media/sf_PRACTICAS/slitaz-4.0.iso`
[Ver](https://www.dropbox.com/s/l80n5g5ak6wkwtw/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.28.04.png?dl=0)

El primero que vamos a hacer es con "ttyLinux":

 - Primero nos descargamos la imagen de la [página oficial](http://ttylinux.net/dloadV-x86_64.html).
 - Ahora tenemos que crear un nuevo disco virtual con:

    `qemu-img create -f qcow2 ttylinux-hdd.img 500M`
[Ver](https://www.dropbox.com/s/u3892p71096jmd8/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.29.42.png?dl=0)

 -Por último solo tenemos que arrancar la máquina virtual para instalarla:
 
    `qemu-system-x86_64 -hda ./ttylinux-hdd.img -cdrom ttylinux-pc_x86_64-16.1.iso`
[Ver](https://www.dropbox.com/s/7rqxs7h9m7ccrav/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.31.39.png?dl=0)

 - B) Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.

Yo voy a usar "VirtualBox" que es el hipervisor que tengo instalado.
[Ver](https://www.dropbox.com/s/kry3gcb7917hehg/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.33.28.png?dl=0)

Ahora debemos de darle al "botón NUEVO" y hay rellenamos algunos [campos](https://www.dropbox.com/s/ga1drzyc0r09308/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.35.03.png?dl=0).

Ponemos el tamaño de "RAM" a usar, [ver](https://www.dropbox.com/s/jpp3vpnuyxkfzq4/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.37.55.png?dl=0).

Creamos un disco virtual y le damos un tamaño dinámico. [Ver](https://www.dropbox.com/s/akwh7arxxkor14z/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.39.13.png?dl=0).

Una vez estos pasos se creará la máquina, por último tenemos que darle a la configuración de la máquina virtual y en la sección de "almacenamiento", le asignamos una imagen ".iso" de las que tengo a la unidad, como se muestra a continuación. [Ver](https://www.dropbox.com/s/oqway5ik68yi09d/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.41.15.png?dl=0).

Para finalizar, solo le damos a "Mostrar" y arrancara la instalación de nuestro sistema operativo. [Ver](https://www.dropbox.com/s/lnkudm9pupwvba5/Captura%20de%20pantalla%202015-01-12%20a%20la%28s%29%2017.44.12.png?dl=0)

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
