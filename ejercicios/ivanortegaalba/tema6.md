# TEMA 6: Virtualización ligera usando contenedores

## Ejercicio 1

#### Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.

Ya tenía kvm instalado en la máquina del tema 1.

## Ejercicio 2

#### Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).

Vamos a crear la máquina virtual con ttyLinux.

Descargamos la imagen y creamos el disco duro virtual:
```
qemu-img create -f qcow2 tty.qcow2 10000M
```

Y arrancamos la máquina desde la imagen:
```
qemu-system-x86_64 -hda tty.qcow2 -cdrom ttylinux-pc_x86_64-16.1.iso
```

Y por ya conocerlo de antes, aunque no es muy ligero, vamos a instalar Debian:

```
qemu-img create -f qcow2 debian.qcow2 10000M
```
Y volvemos a montar desde la imagen:

```
qemu-system-x86_64 -hda fichero-cow.qcow2 -cdrom debian-7.7.0-amd64-netinst.iso
```

Por último vamos con SliTaz:
```
qemu-img create -f qcow2 slitaz.qcow2 10000M
```
Y otra vez igual:
```
qemu-system-x86_64 -hda fichero-cow3.qcow2 -cdrom slitaz-4.0.iso
```
Y el otro hipervisor, VMWare:
Lo descargamos de la página oficial y :
```
sh VMware-Player.bundle
```
Seguimos los pasos del instalador y seleccionamos la imagen desde el asistente.
