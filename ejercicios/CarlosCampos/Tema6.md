#Carlos Campos
## Virtualización completa: uso de máquinas virtuales

### Ejercicio 1
Antes de nada, debemos de ver si nuestro ordenador está preparado para usar KVM, para ello debemos de ejecutar:

    kvm-ok

En el cuál nos debe de aparecer si nuestra máquina esta o no preparada. En mi caso mi ordenador no soporta la virtualización tal y como podemos ver en la siguiente imágen.

Para instalar todo lo necesario haría falta ejecutar el siguiente código:

    sudo apt-get install qemu-kvm qemu-system libvirt-bin virtinst virt-manager
