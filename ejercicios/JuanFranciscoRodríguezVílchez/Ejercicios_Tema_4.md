
Ejercicios de Juan Francisco Rodríguez Vílchez
================================================

## Ejercicios Tema 4: Virtualización ligera usando contenedores ##

### Ejercicio 1 ###

**Instala LXC en tu versión de Linux favorita.**

He procedido a bajarme LXC desde Github con:

```sh
git clone https://github.com/lxc/lxc
```
Una vez descargado, accedemos al directorio y lo instalamos siguiendo las instrucciones que vienen en el archivo "INSTALL":

```sh
./autogen.sh
./configure
make
make install
```
Para configurar, construir e instalar LXC.

Otra forma para instalarlo sería desde los repositorios con:

```sh
sudo apt-get install lxc
```

Finalmente,en la siguiente captura podemos ver como LXC se encuentra correctamente instalado y preparado para ser usado:

![captura1](http://i.imgur.com/A04sHpv.png)

Tiene todas las dependencias en "enabled", es decir, listo para ser usado.

***

### Ejercicio 2 ###

**Comprobar qué interfaces puente se han creado y explicarlos.**

Primero, he procedido a crear un contenedor denominado una-caja e instalar Ubuntu en él, sin embargo me dió el siguiente error:

```sh 
lxc-create: symbol lookup error: /usr/lib/x86_64-linux-gnu/liblxc.so.1: undefined symbol: cgmanager_get_pid_cgroup_abs_sync
```
Para solucionarlo me he descargado y actualizado "libcgmanager-dev" desde [aqui](http://www.ubuntuupdates.org/package/core/trusty/main/proposed/libcgmanager-dev)

Posteriormente, procedí a crear el contenedor:

```sh
sudo lxc-create -t ubuntu -n una-caja
```
Dandome un error de que no me encuentra los 'templates', tras un buen rato buscando información, observé que al intalar lxc no se me instalaban los templates (en Linux Mint, al menos). Para solucionarlo utilicé el comando que viene [aqui](https://www.computersnyou.com/2123/installing-lxc-with-lxc-web-pannel-in-ubuntu/), consiguiendo que funcione correctamente.

Una vez creada, podemos iniciarla con:

```sh
sudo lxc-start -n una-caja
```
Introducimos usuario y password y ya estamos dentro:

![captura2](http://i.imgur.com/r8IKHZM.png)

El contenedor aunque no tiene acceso al anfitrión, si podrá acceder a internet a través de él. Esto lo podemos comprobar fácilmente a través de los puentes creados consultando el siguiente fichero:

```sh
sudo nano /var/lib/lxc/una-caja/config
```

![captura3](http://i.imgur.com/qzAVwZi.png)

En general, se ha creado un puente llamado lxcbr0 y otro con el prefijo veth, es decir, se crea una red de tipo ethernet virtual unida a lxcbr0.

Finalmente, desde fuera del contenedor, con ifconfig podemos ver que lxcbr0 se encuentra creado automaticamente. Aparece la red lxcbr0 que es una red ethernet de tipo MULTICAST. 

![captura4](http://i.imgur.com/28DlApQ.png)

***

### Ejercicio 3.1 ###

**Crear y ejecutar un contenedor basado en Debian.**

Para ejecutar un contenedor basado en Debian utilizamos la orden:

```sh
sudo lxc-create -t debian -n debian-caja
```
Necesitando primero descargar todos los paquetes para crear el contenedor antes de instalarlo y configurarlo para que sea funcional.

Y arrancamos dicho contenedor con: 

```sh
sudo lxc-start -n debian-caja
```
Pidiéndonos ahora en la terminal que introduzcamos el nombre de usuario y contraseña para acceder.

![captura5](http://i.imgur.com/ZDZU9em.png)

***

### Ejercicio 3.2 ###

**Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora.**

Como no uso ninguna ninguna versión de Ubuntu 13.04 ni superior, he podido instalar Fedora correctamente. Para ello, he utilizado ```sh sudo lxc-create -t fedora -n fedora-caja```:

![captura6](http://i.imgur.com/vnnUi99.png)

Una vez creada, he procedido a ejecutar el contenedor con:

```sh
sudo lxc-start -n fedora-caja
```
![captura7](http://i.imgur.com/MIGYe6B.png)

Como otra alternativa, también he creado un contenedor basado en CentOs:

```sh
sudo lxc-create -t centos -n centos-caja
```
Y lo he arracancado mediante: ```sh sudo lxc-start -n centos-caja```

***

### Ejercicio 4.1 ###

**Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.**

Antes de nada, tenemos que instalar 'lxc-webpanel' para ello accedemos a su [web](http://lxc-webpanel.github.io/install.html) y seguimos los pasos indicados para instalarlo (que es bastante simple):

```sh
wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash
```
Una vez instalado accedemos a http://your_ip_address:5000/ (localhost:5000) e introducimos usuario (admin) y contraseña (admin).

![captura9](http://i.imgur.com/IfXe2BZ.png)

Al entrar, podemos ver las máquinas que tenemos instaladas, además de diversos parámetros como la memoria usada, la CPU usada,...:

![captura10](http://i.imgur.com/G0dAb5r.png)

Posteriormente, para arrancar una de las máquinas virtuales solamente hay que pulsar el botón de "Start":

![captura11](http://i.imgur.com/10ynSyT.png)

En este caso, tendríamos arrancada la máquina virtual de fedora, ya que se encuentra en el estado "Running". Sin embargo, la máquina virtual de Ubuntu (una-caja) se encuentra parada ("Stopped").

En caso contrario, si queremos parar una de las máquinas virtuales solo tenemos que pulsar el botón de "Stop":

![captura12](http://i.imgur.com/vLEZBnu.png)

Como podemos ver, ambas máquinas se encuentran en estado "Stopped".

***

### Ejercicio 4.2 ###

**Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.**

Para restringir recursos, accedemos a un contenedor que se encuentre parado y entramos en sus opciones (realizando doble-click encima suya). De esta forma, obtenemos un menú como este:

![captura13](http://i.imgur.com/mkipYm6.png)

Que nos permite cambiar el tipo y link de red, los flag de red, iniciar al arrancar, etc.

Un poco más abajo, nos aparece algo tal que así:

![captura14](http://i.imgur.com/Nh75BSx.png)

De esta forma,podemos modificar el límite de memoria, el límite de memoria + swap, las CPUs,... Actualmente, como podemos ver, todos los límites están en modo "ilimitados", es decir, no hay nada restringido.

Voy a proceder a restringir los recursos:

![captura15](http://i.imgur.com/BCWIOF2.png)

De esta forma, he restringido el uso máximo de memoria a 3930 MB, el límite máximo de intercambio de memoria a 9378 MB, y finalmente, el límite de procesadores que podrá utilizar la máquina a 2.

***

### Ejercicio 5 ###

**Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx**

Para comparar las prestaciones vamos a usar una jaula y un contenedor con el mismo sistema instalado, Ubuntu. Antes de realizar las pruebas vamos a comprobar que el servidor nginx funciona correctamente en ambos sistemas. Para ello, comprobamos que el servidor está ejecutándose en ambos sistemas (service nginx status).

* Vemos que está ejecutándose en la jaula:
![captura16](http://i.imgur.com/p8OrhMG.png)

* Vemos que también está ejecutándose en el contenedor:

![captura17](http://i.imgur.com/Mj7SXQT.png)


Comprobamos que en ambos servidores funcione correctamente, así que desde el navegador de nuestro sistema accedemos a la dirección de ambos servidores.

* Para acceder al servicio instalado dentro del contenedor **"http://10.0.3.69/"**:

![captura18](http://i.imgur.com/qabrEm2.png)

* Para acceder al servicio instalado dentro de la jaula **"http://10.0.2.45/"**:

![captura19](http://i.imgur.com/6FtsCUc.png)

Ambos servidores funcionan correctamente como podemos ver anteriormente en las capturas, por lo tanto, vamos a medir las prestaciones de los mismos. Para realizar la medición procedemos a utilizar la aplicación **"ab"** (Apache Benchmark), una utilidad muy sencilla que nos permite hacer pruebas de carga a cualquier tipo de servidor web. Para usarlo hay que indicar un número de conexiones a realizar y la concurrencia con la que se realizarán las mismas. Para obtener resultados más exactos vamos a realizar el test a cada servidor unas **10 veces**, con número de conexiones que será **1000000** y una concurrencia que será **10**.

Vamos a usar ab -n 1000000 -c 10 **http://10.0.2.45/** para la jaula y ab -n 1000000 -c 10 **http://10.0.3.69/** para el contenedor.


|             |                      |      nginx (jaula)      |                                |                      |    nginx (contenedor)   |                                |
|:-----------:|:--------------------:|:-----------------------:|:------------------------------:|:--------------------:|:-----------------------:|:------------------------------:|
|             | Tiempo ejecución (s) | Solicitudes por segundo | Velocidad transferencia (KB/s) | Tiempo ejecución (s) | Solicitudes por segundo | Velocidad transferencia (KB/s) |
|   Prueba 1  |        57,291        |         15868,43        |             9234,31            |        73,323        |         12267,43        |             6748,47            |
|   Prueba 2  |        61,334        |         20070,43        |             9616,32            |        77,258        |         12778,27        |             7920,43            |
|   Prueba 3  |        63,892        |         16436,32        |             8432,92            |        62,809        |         16328,32        |             6610,86            |
|   Prueba 4  |        53,425        |         18343,98        |             8932,21            |        60,645        |         16446,64        |             7327,21            |
|   Prueba 5  |        48,338        |         29214,87        |            10891,12            |        69,644        |         15407,86        |             8732,41            |
|   Prueba 6  |        47,664        |         20553,65        |            11019,25            |        59,232        |         17010,98        |             8621,01            |
|   Prueba 7  |        44,569        |         20218,23        |            12432,53            |        72,864        |         13343,75        |             7828,75            |
|   Prueba 8  |        42,535        |         20222,43        |            10858,38            |        84,135        |         12234,55        |             6239,58            |
|   Prueba 9  |        48,237        |         21615,32        |            11323,66            |        74,775        |         12343,00        |             5375,92            |
|  Prueba 10  |        55,324        |         19132,56        |             9399,87            |        59,354        |         16232,59        |             8667,23            |
|             |                      |                         |                                |                      |                         |                                |
|    Media    |        55,220        |        18669,548        |            9743,982            |        72,327        |        15648,120        |            7943,123            |
| Desviación  |         5,723        |         1923,432        |            1123,920            |         7,434        |         1893,827        |             840,343            |


Fijandonos en los resultados obtenidos, podriamos decir que la jaula es la que presenta mejores resultados, al tener una velocidad de transferencia mayor, mayor número de solicitudes por segundo, y un tiempo de ejecución algo más pequeño. Sin embargo, para hacer una comparación más precisa, deberiamos de haber realizado una mayor cantidad de test y además, deberian de ser bastante más agresivos para poder comparar bien las prestaciones tanto en la jaula como en el contenedor. 



### Ejercicio 6 ###
### Ejercicio 7 ###
### Ejercicio 8 ###

### Ejercicio 9 ###

### Ejercicio 10 ###

