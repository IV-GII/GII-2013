# Ejercicios tema 6

## Ejercicio 1

#### Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.


## Ejercicio 2

#### 1. Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo). 

#### 2. Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels. 

**Pruebo con SliTaz**

Primero creo un disco duro virtual:

`qemu-img create -f qcow2 fichero-cow3.qcow2 10000M`

Una vez creado, y despues de haber descargado de [la página oficial](http://www.slitaz.org/es/get/#stable) la imagen ISO, arranco la máquina virtual:

`qemu-system-x86_64 -hda fichero-cow3.qcow2 -cdrom slitaz-4.0.iso`

![](http://fotos.subefotos.com/03f9551500d6b184fd022c5c5f0f45fbo.png)

**Pruebo con CoreOS**

Realizo los pasos anteriores pero con la distribución y la [imagen ISO](http://distro.ibiblio.org/tinycorelinux/downloads.html) de CoreOS:

```sh
qemu-img create -f qcow2 fichero-cow3.qcow2 10000M
qemu-system-x86_64 -hda fichero-cow3.qcow2 -cdrom Core-current.iso
```

![](http://fotos.subefotos.com/8890f780b6af76d5756751326dd379e3o.png)

Desde **VMware** realizo la instalación de una nueva máquina virtual de SliTaz y otra de CoreOS:

![](http://fotos.subefotos.com/9c78f633064e0f8df26aa34a0150a297o.png)

![](http://fotos.subefotos.com/d175dbb3eb29d0ffa7caecc83fea64f2o.png)
