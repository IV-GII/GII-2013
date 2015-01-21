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

Una vez creada y arrancado nos disponemos a instalar yum para luego crear el contenedor de Fedora.
        apt-get install yum
        lxc-create -t fedora -n fedoradebian
![Imgur](http://i.imgur.com/8pGmRzE.png)


### Ejercicio 4
#### 1 Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas

Instalamos webpanel desde su web.

        wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash
        
Una vez instalado nos conectamos desde el navegador a la dirección local con el puerto 5000.
http://localhost:5000


![Página de inicio](http://i.imgur.com/FOx5MFA.png)

![Contenedores inicializados](http://i.imgur.com/vL7Y9A3.png)

#### 2 Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

Poniendo límite de memora al contenedor debian. Como estoy hospedando ubuntu en una máquina virtual, ésta no me deja modificar el número de núcleos a dedicar a los contenedores instalados dentro de la máquina virtual.

![Imgur](http://i.imgur.com/GSBmq1q.png)


### Ejercicio 5
#### Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.

Instalamos apache para realizar el test de prestaciones y el servidor nginx

        apt-get install apache2-utils
        
        apt-get install nginx
        
Test en la jaula: (más rapido)
![Imgur](http://i.imgur.com/FOsUFyl.png)

Test en el contenedor: (más lento)
![Imgur](http://i.imgur.com/UO4DQgi.png)




  
  
