###Ejercicio 8: Instalar libvirt. Te puede ayudar esta guía para Ubuntu.

En primer lugar tenemos que comprobar que nuestro hardware soporte la extensión de virtualización necesaria para KVM:

	kvm-ok

Si el resultado es satisfactorio nos devolverá lo siguiente:

    INFO: /dev/kvm exists
    KVM acceleration can be used

Procedemos a instalar los paquetes necesarios para libvirt:

	sudo apt-get install kvm libvirt-bin

Añadimos un usuario al grupo libvirtd:

	sudo adduser $USER libvirtd.