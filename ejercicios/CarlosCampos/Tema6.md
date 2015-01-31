#Carlos Campos
## Virtualización completa: uso de máquinas virtuales

### Ejercicio 1
Antes de nada, debemos de ver si nuestro ordenador está preparado para usar KVM, para ello debemos de ejecutar:

    kvm-ok

En el cuál nos debe de aparecer si nuestra máquina esta o no preparada. En mi caso mi ordenador no soporta la virtualización tal y como podemos ver en la siguiente imágen.

Para instalar todo lo necesario haría falta ejecutar el siguiente código:

    sudo apt-get install qemu-kvm qemu-system libvirt-bin virtinst virt-manager

### Ejercicio 2  
#### 2.1
En primer lugar, tenemos que crear un HDD virtual para cada MV.  

    qemu-img create -f qcow2 HDD1.qcow2 1024M
    qemu-img create -f qcow2 HDD2.qcow2 1024M

Para iniciar la instalación debemos de arrancar las máquinas virtuales desde la ISO, en mi caso usamos **SliTaz** y **DSL**.

    qemu-system-x86_63 -hda HDD1.qcow2 -cdrom slitaz-4.0.iso &

![Imgur](http://i.imgur.com/FqknKUp.png)

    qemu-system-x86_64 -hda HDD2.qcow2 - cdrom dsl-4.11.rc1.iso &

![Imgur](http://i.imgur.com/fwvFbMK.png)

#### 2.2
Vamos a procededer a instalar bajo VirtualBox DSL.  

Una vez que tenemos intalado virtualbox y descargado la imágen de DSL, basta con abrir Virtualbox, pulsar sobre **Nueva** y seguir el proceso de configuración de la máquina virtual paso a paso.

Una vez creada la máquina virtual tan solo necesitaremos pulsar sobre ella para acceder a **Configuración -> Almacenamiento** y selecionamos en la unidad de CD la imágen descargada, en nuestro caso el sistema operativo DSL.

![Imgur](http://i.imgur.com/jJSv56t.png)

### Ejrcicio 4
El primer paso que tenemos que realizar es crear una imagen y ejecutarlo igual que en el ejercicio anterior, pero esta vez especificandole la memoria.

    qemu-img create -f qcow2 lxde.qcow2 8096M
    qemu-system-x86_64 -hda lxde.qcow2 -cdrom lubuntu-14.10-desktop-i386.iso -m 512M

Una vez instalada, la arrancamos con los dos especificadores que necesitamos:

    qemu-system-x86_64 -boot order=c -drive file=lxde.qcow2,if=virtio -m 512M -name debian -vnc :1

La máquina comienza a ejecutarse pero esta vez sin mostrarnos su entorno, observamos la ip que tiene con un **ifconfig**.

Con cualquier cliente VNC accedemos indicando dicha ip.
