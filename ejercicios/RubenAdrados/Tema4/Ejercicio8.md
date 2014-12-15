###Ejercicio8

**Instalar libvirt.**

Para comenzar la instalación ejecutamos lo siguiente:

<pre>sudo apt-get install kvm libvirt-bin</pre>

Añadimos el usuario actual:

<pre>sudo adduser $USER libvirtd</pre>

Para finalizar instalamos **virt-instal**, que nos sera de utilidad en el futuro:

<pre>sudo apt-get install virtinst</pre>