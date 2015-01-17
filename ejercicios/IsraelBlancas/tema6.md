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



***

##Ejercicio 3##

#####Crear un benchmark de velocidad de entrada salida y comprobar la diferencia entre usar paravirtualización y arrancar la máquina virtual simplemente con ``qemu-system-x86_64 -hda /media/Backup/Isos/discovirtual.img`` #####

Utilizando ``qemu-system-x86_64 -boot order=c -drive file=fichero-cow2.qcow2,if=virtio``

|Medición    |Real        |User       |Sys        |
| ---------- | ---------- |---------- |---------- |
| 1          | 3.992      |0.048      |3.272      |
| 2          | 4.420      |0.080      |3.540      |
| 3          | 4.276      |0.080      |3.448      |
| 4          | 5.246      |0.044      |3.324      |
| Media      | 4.484      |0.063      |3.396      |


Utilizando ``qemu-system-x86_64 -hda fichero-cow2.qcow2``

|Medición    |Real        |User       |Sys        |
| ---------- | ---------- |---------- |---------- |
| 1          | 7.343      |0.052      |3.436      |
| 2          | 5.982      |0.048      |4.424      |
| 3          | 4.015      |0.044      |3.292      |
| 4          | 4.358      |0.052      |3.584      |
| Media      | 5.425      |0.049      |3.684      |

Como podemos ver, es algo más rápido de la primera forma. No es una gran diferencia pero, en una operación mayor, podremos ver mejor la diferencia.



***

##Ejercicio 4##

#####Crear una máquina virtual Linux con 512 megas de RAM y entorno gráfico LXDE a la que se pueda acceder mediante VNC y ssh.#####

Primero he creado la imagen con ``qemu-img create -f qcow2 lxde.img 15G`` y después he ejecutado la ``qemu-system-x86_64 -hda lxde.img -cdrom debian-7.7.0-amd64-netinst.iso -m 512M``. Aunque Debian 7 viene con Gnome, se puede instalar (incluso antes de instalar el sistema operativo) otro entorno de escritorio.
Para ello, seguimos los siguientes pasos:

Accedemos a la instalación y vamos a "Advanced options"

![Instalación Debian](http://fotos.subefotos.com/45fd16a5b833b78f04931e933ce5943ao.jpg)


Vamos a "Alternative desktop environments"

![Instalación Debian](http://fotos.subefotos.com/991dbac978e9ae4b65a26ea25638bf4bo.jpg)

Seleccionamos LXDE e instalamos

![Lista de escritorios](http://fotos.subefotos.com/226d5fbf5687510da983d20684c9348do.jpg)

y al terminar de instalar, aquí tendremos nuestro Debian con LXDE

![Debian funcionando](http://fotos.subefotos.com/485d0ab0b322baa2c6afc835570e57e6o.jpg)


***

##Ejercicio 5##

#####Crear una máquina virtual ubuntu e instalar en ella un servidor nginx para poder acceder mediante web.#####

Ejecuando ``azure vm image list | grep Ubuntu`` en el terminal, obtenemos todas las imágenes Ubuntu disponibles. Voy a instalar la imagen " b39f27a8b8c64d52b05eac6a62ebad85__Ubuntu-14_04-LTS-amd64-server-20140414-en-us-30GB".

Podemos ver información sobre ella ejecutando ``azure vm image show b39f27a8b8c64d52b05eac6a62ebad85__Ubuntu-14_04-LTS-amd64-server-20140414-en-us-30GB``

![Información imagen](http://fotos.subefotos.com/43aa7c34c1472aaf9e9084dffbb1ccb7o.jpg)

Creamos la máquina con:

``azure vm create iblancasa b39f27a8b8c64d52b05eac6a62ebad85__Ubuntu-14_04-LTS-amd64-server-20140414-en-us-30GB iblancasa [PASS] --location "West Europe" --ssh``

Con nombre y usuario iblancasa, la imagen que se ha indicado antes, una contraseña, localización en el este de Europa y uso de SSH. Es importante que hayamos creado antes el almacenamiento (con el mismo nombre de la VM) ya que puede dar algunos problemas.

![Creando la máquina virtual](http://fotos.subefotos.com/26443a3ace7d4c093f519f691b1e16aco.jpg)

Después podremos ver algunos detalles de las máquinas que tengamos creadas utilizando ``azure vm list``

![Lista de VM](http://fotos.subefotos.com/959c0866882bf4907fddff77341cca73o.jpg)

La arrancamos con ``azure vm start iblancasa`` y nos conectamos con ``ssh iblancasa@iblancasa.cloudapp.net``. Una vez nos encontremos dentro, ejecutamos ``sudo apt-get update && sudo apt-get ugprade`` para que se actualice la imagen y los repositorios. Después, instalamos el servidor ejecutnado ``sudo apt-get install nginx``. Cuando finalice la instalación, iniciamos el servidor ``sudo service nginx start`` (en algunas versiones, Nginx no muestra ningún mensaje indicado que se haya iniciado. En ese caso, comprobamos su estado mediante el comando ``sudo service nginx status``)

![Estado de Nginx](http://fotos.subefotos.com/64af733b484707640aa0e5c9008afd63o.jpg)

Ahora solo falta crear el "endpoint". En una terminal local, ejecutamos ``azure vm endpoint create -n http iblancasa 80 80``:

![Abriendo endpoint](http://fotos.subefotos.com/f820c44b0f6c2bb6324c155e0c9e559fo.jpg)

y ya podremos acceder a nuestra web

![NGINX funcionando en Azure](http://fotos.subefotos.com/4f7db804eb23fbe6b9087d8e6026d580o.jpg)
