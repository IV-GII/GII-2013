###Ejercicio9

**Instalar un contenedor usando virt-install.**

Para instalarlo, ejecutamos en la terminal:

<pre>sudo apt-get install virtinst</pre>

Tambien necesitamos instalar los siguientes paquetes:

<pre>sudo apt-get install virt-manager
sudo apt-get install virt-viewer</pre>

Primedo debemos situar la imagen que instalaremos en la carpeta corresponidente:

<pre>sudo mv ubuntu-13.04-desktop-amd64.iso /var/lib/libvirt/images/ubuntu-13.iso</pre>

Y para finalizar realizamos la instalación:

<pre>sudo virt-install --name ubuntu13 --ram 512 --disk path=/home/ubuntu13,size=5 --cdrom='/var/lib/libvirt/images/ubuntu-13.iso' --graphics vnc</pre>