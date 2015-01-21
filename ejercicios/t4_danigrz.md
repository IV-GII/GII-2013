### Ejercicio 1
#### Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

        sudo apt-get install lxc
    
### Ejercicio 2
#### Comprobar qué interfaces puente se han creado y explicarlos.

    ![Imgur](http://i.imgur.com/x95TVVn.png)
lxcbr0 Es una interfaz puente que usa el contenedor de lxc creado como interfaz de red del contenedor. La dirección ip de esta interfaz en el anfitrion es la direccion de la puerta de enlace del contenedor.
    
### Ejercicio 3
#### Crear y ejecutar un contenedor basado en Debian.Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. Por ejemplo, Óscar Zafra ha logrado instalar Gentoo usando un script descargado desde su sitio, como indica en este comentario en el issue.

        sudo lxc-create -t debian -n debian


  
  
