#Virtualización completa: uso de máquinas virtuales. 

## Tema 6.

**Ejercicio 1.** Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.

``kvm-ok ```
<a href="http://es.tinypic.com?ref=i44sr6" target="_blank"><img src="http://i57.tinypic.com/i44sr6.png" border="0" alt="Image and video hosting by TinyPic"></a>

**Ejercicio 2.**Crear varias máquinas virtuales con algún sistema operativo libre tal como Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).

**Ejercicio 3.**Crear un benchmark de velocidad de entrada salida y comprobar la diferencia entre usar paravirtualización y arrancar la máquina virtual simplemente con qemu-system-x86_64 -hda /media/Backup/Isos/discovirtual.img

**Ejercicio 4.**Crear una máquina virtual Linux con 512 megas de RAM y entorno gráfico LXDE a la que se pueda acceder mediante VNC y ssh.

**Ejercicio 5.**Crear una máquina virtual ubuntu e instalar en ella un servidor nginx para poder acceder mediante web.

**Ejercicio 6.** Usar juju para hacer el ejercicio anterior.

