##Ejercicio 1

**Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.**

Para usar la última versión procedemos a copiar el repositorio GitHub de lxc.

```git clone https://github.com/lxc/lxc```

![Figura1](Imagenes/ej4_1_1.png)
> Figura 1. Descargando la última versión de lxc.

A continuación nos colocamos en el directorio creado ( por defecto será "lxc" ).

```cd lxc```

Finalmente usando privilegios de administrador ( ```sudo``` ) podemos realizar la instalación. Los pasos se especifican en el fichero 'INSTALL' incluido en el directorio 'lxc' , la opción más simple para compilar e instalar es la siguiente.

*	Generamos el fichero 'configure'.

	```./autogen.sh``` `

*	Configuramos el paquete para nuestro sistema.

	```./configure``` `

*	Compilamos el paquete

	```make``` `

*	Iniciamos la instalación de los programas junto a los ficheros de datos y su documentación.

	```make install``` `


![Figura2](Imagenes/ej4_1_2.png)
> Figura 2. Programas de la suite de lxc.


##Ejercicio 2

**Pasos previos al ejercicio 2**

Debemos de comprobar si nuestro núcleo del sistema operativo está preparado para usar la tecnología de lxc. En mi caso no están activados los "User namespace".

![Figura3](Imagenes/ej4_2_4.png)
> Figura 3. User namespace: missing

Podemos comprobar nuestra versión del kernel usando el comando ```uname -a```.

![Figura4](Imagenes/ej4_2_2.png)
> Figura 4. Versión del kernel.

Para usar por tanto lxc tendremos que [actualizar el kernel](https://wiki.debian.org/HowToUpgradeKernel). Los pasos para un sistema basado en debian son los siguientes:

*	Comprobamos las nuevas versiones kernel disponibles.
	```apt-cache search linux-image```
*	Procedemos a descargar e instalar la más reciente
	```apt-get install linux-image-flavour```

	En mi caso: ```sudo apt-get install linux-image-3.13.0-40-generic```

![Figura5](Imagenes/ej4_2_3.png)
> Figura 5. Descargando y actualizando kernel del sistema operativo.

Tras actualizar debemos de reiniciar el sistema operativo para que se apliquen correctamente los cambios. Tras reiniciar comprobamos de nuevo mediante ```uname -a```. 

![Figura6](Imagenes/ej4_2_5.png)
> Figura 6. Versión del nuevo kernel.

A continuación tenemos que volver a instalar las cabeceras del kernel para poder compilar módulos.

```sudo apt-get install linux-headers-$(uname -r)```

Finalmente está todo configurado correctamente para poder usar lxc, como observamos si ejecutamos el comando ```lxc-checkconfig```.

![Figura7](Imagenes/ej4_2_6.png)
>Figura 7. Comprobación de la configuración para lxc.

**Instalación del contenedor**

Ya podemos realizar la instalación del contenedor usando lxc.

```sudo lxc-create -t ubuntu -n una-caja```

```sudo lxc-create -t ubuntu-cloud -n nubecilla```

Arrancamos el contenedor creado y nos conectamos a él.

```sudo lxc-start -n nubecilla```

![Figura8](Imagenes/ej4_2_7.png)
>Figura 8. Contenedor en funcionamiento.

**Comprobar qué interfaces puente se han creado y explicarlos.**

Al crear el contenedor anterior lxc ha generado un puente de red pre-configurado y además se crea una interfaz virtual que permite disponer de una conexión tipo ethernet dentro de un contenedor.

![Figura9](Imagenes/ej4_2_8.png)
>Figura 9. Puentes de red creados.

![Figura10](Imagenes/ej4_2_9.png)
>Figura 10.


##Ejercicio 3

**Crear y ejecutar un contenedor basado en Debian.**

```sudo lxc-create -t debian -n caja-debian```

```sudo lxc-start -n caja-debian```



---

**Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro.**

##Ejercicio 4

**Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.**

---

**Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.**

##Ejercicio 5

**Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.**

##Ejercicio 6

**Instalar juju.**

---

**Usándolo, instalar MySQL en un táper.**

##Ejercicio 7

**Destruir toda la configuración creada anteriormente**

---

**Volver a crear la máquina anterior y añadirle mediawiki y una relación entre ellos.**

---

**Crear un script en shell para reproducir la configuración usada en las máquinas que hagan falta.**

##Ejercicio8

**Instalar libvirt.**

##Ejercicio 9

**nstalar un contenedor usando virt-install.**

##Ejercicio 10

**Instalar docker.**

##Ejercicio 11

**Instalar a partir de docker una imagen alternativa de Ubuntu y alguna adicional, por ejemplo de CentOS.**

---

**Buscar e instalar una imagen que incluya MongoDB.**

##Ejercicio 12

**Crear un usuario propio e instalar nginx en el contenedor creado de esta forma.**

##Ejercicio 13

**Crear a partir del contenedor anterior una imagen persistente con commit.**

##Ejercicio 14

**Crear una imagen con las herramientas necesarias para DAI sobre un sistema operativo de tu elección.**
