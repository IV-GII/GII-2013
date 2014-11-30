#Ejercicios de JCristobal (José Cristóbal López Zafra)

# Tema 4

[Enlace al tema](http://jj.github.io/IV/documentos/temas/Contenedores)


##Ejercicio 1
###Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

Primero nos descargamos la última versión de Github:
`git clone https://github.com/lxc/lxc`

y en la carpeta de LXC ejecutamos `./autogen.sh && ./configure && make && sudo make install`

Puede dar problemas si no tenemos instalado autoconf, que instalamos con `sudo apt-get install autoconf`

Por último comprobamos si está preparado para usar este tipo de tecnología y también si se ha configurado correctamente con `lxc-checkconfig`
		
![imagen](http://i.imgur.com/HRgX8yc.png)

También se podría instalar simplemente con `sudo apt-get install lxc`, aunque con el método anterior nos aseguramos que instalamos la última versión.


##Ejercicio 2
###Comprobar qué interfaces puente se han creado y explicarlos.

La instalación anterior no me deja crear un contenedor e instalar ubuntu dentro, me da el siguiente error

"lxc-create: error while loading shared libraries: liblxc.so.1: cannot open shared object file: No such file or directory"

Lo soluciono gracias al [enlace que me proporciona el profesor](https://lists.linuxcontainers.org/pipermail/lxc-users/2014-January/006069.html)


Creo el contenedor con `sudo lxc-create -t ubuntu -n una-caja` y para arrancarlo `sudo lxc-start -n una-caja`


> Falla al arrancar, [aquí capturas al intentar arrancarlo, y al internar arrancarlo en foreground](http://i.imgur.com/ymzHosW.png)
> 
> Vemos que el fallo es un conflicto de permisos con CGROUP.
> 


Vuelvo a internarlo sobre un sistema Debian, monto cgroup, [instalo LXC](https://wiki.debian.org/LXC#Installation) y creo el contenedor siguiendo los mismo pasos que he comentado antes

[Contenedor recién creado](http://i.imgur.com/HvOMhV8.png) y lo arrancamos: ![arrancado](http://i.imgur.com/dhErc2R.png)


Con `sudo lxc-list` podemos ver el estado de los contenedores, paro el contenedor y lo ejecuto: [Estado de los contenedores](http://i.imgur.com/YwcvSSL.png)


Dentro del contenedor ejecutamos `ifconfig -a` para ver sus interfaces de red:

![imagen](http://i.imgur.com/SDVwA8Z.png)


Y fuera, con `brctl show` y el contenedor parado (`lxc-stop -n una-caja`) vemos que no tiene ninguna interfaz, aunque según los apuntes deberíamos haber encontrado lxcbr0 y veth.

Creo y asigno una nueva interfaz a la red cableada:

![imagen](http://i.imgur.com/mflfRii.png)




##Ejercicio 3
###Crear y ejecutar un contenedor basado en Debian.

Muestro los pantallazos de la actividad anterior, ya que instalo Debian, con el contenedor recién creado:

![Contenedor_recién_creado](http://i.imgur.com/HvOMhV8.png) y [arrancado](http://i.imgur.com/dhErc2R.png)


###Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. Fedora, al parecer, tiene problemas si estás en Ubuntu 13.04 o superior, así que en tal caso usa cualquier otra distro. 


Usamos [el script](https://raw.githubusercontent.com/globalcitizen/lxc-gentoo/master/lxc-gentoo) del [comentario del issue de Óscar Zafra](https://github.com/IV-GII/GII-2013/issues/87#issuecomment-28639976): nos lo descargamos y lo metememos en /usr/share/lxc/templates/:

`sudo wget -P /usr/share/lxc/templates/ https://raw.github.com/globalcitizen/lxc-gentoo/master/lxc-gentoo`

y le damos permisos `chmod +x /usr/share/lxc/templates/lxc-gentoo`

Y creamos el contenedor: `/usr/share/lxc/templates/lxc-gentoo create`

![descargado_permisos_crear](http://i.imgur.com/wnOqH80.png)


Lo ejecutamos y lo arracancamos con el nombre que le hemos dado `lxc-start -f gentoo.conf -n gentoo`



Crearemos también otro contenedor con [Progress](https://www.progress.com/):

ejecuto `lxc-create -t progress -n pro` para crearlo:


![imagen](http://i.imgur.com/iKYY7Xj.png)

y lo ejecuto con `lxc-start -n pro`
 



##Ejercicio 4
###Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.


Consultamos la [web de LXC WebPanel](http://lxc-webpanel.github.io/install.html) para instalarlo y vemos que tenemos que ejecutar `wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash`:

[Instalandose](http://i.imgur.com/JQ2Mj9z.png)

Una vez instalado accedemos a http://your_ip_address:5000/ (localhost:5000) e introducimos usuario (admin) y contraseña (admin). Una vez dentro podemos visualizar las máquinas que tenemos instaladas:

![imagen](http://i.imgur.com/PpKaGqv.png)

Ahora podemos arrancar una máquina, pulsando simplemente en el botón de "Start":

![imagen](http://i.imgur.com/azZxjXt.png)

y pararla con el de "Stop"

![imagen](http://i.imgur.com/8egawv4.png)


###Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.

Accedemos a un contenedor (en estado "Stopped") y modificamos los parámetros, pulsamos "Apply" para acabar:

![imagen](http://i.imgur.com/BPkV7WO.png)

En mi caso modifico el límite de memoria y memoria total + memoria de intercambio a 512 y 1024 MB respectivamente. También cambio a 3 los procesadores que podrá usar la máquina y dejo igual el porcentaje de procesamientos que podrá usar.


##Ejercicio 5
###Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.

Primero accedemos a la jaula con `sudo chroot /home/jaulas/saucy/` y arrancamos nginx con `service nginx start`. Una vez hecho esto podemos ver la página visitamos http://127.0.0.1/ en nuestro navegador.

Arrancamos igual nginx en el contenedor y consultamos con `ifconf -a` qué página tenemos que consultar en el navegador, en mi caso http:/10.0.2.15/.

Y para comparar las prestaciones usaremos un ataque Apache Benchmark (fuera de la jaula y el contendor), y compararemos resultados: usaremos `ab -n 500000 -c 10 http://127.0.0.1/index.html` para la jaula y `ab -n 500000 -c 10 http://10.0.2.15/index.html` para el contenedor.

Repetimos el ataque y anotamos los tiempos, solicitudes por segundo, tiempo por respuesta y velocidad de transeferencia al realizar los test:

contenedor:

Time taken for tests:   26.313 seconds
Requests per second:    19001.70 [#/sec] (mean)
Time per request:       0.526 [ms] (mean)
Time per request:       0.053 [ms] (mean, across all concurrent requests)
Transfer rate:          6698.84 [Kbytes/sec] received


Time taken for tests: 23.532 seconds
Requests per second:    21247.82 [#/sec] (mean)
Time per request:       0.471 [ms] (mean)
Time per request:       0.047 [ms] (mean, across all concurrent requests)
Transfer rate:          7490.69 [Kbytes/sec] received


Time taken for tests:   23.696 seconds
Requests per second:    21100.41 [#/sec] (mean)
Time per request:       0.474 [ms] (mean)
Time per request:       0.047 [ms] (mean, across all concurrent requests)
Transfer rate:          7438.72 [Kbytes/sec] received


Time taken for tests:   23.959 seconds
Requests per second:    20869.29 [#/sec] (mean)
Time per request:       0.479 [ms] (mean)
Time per request:       0.048 [ms] (mean, across all concurrent requests)
Transfer rate:          7357.24 [Kbytes/sec] received


Jaula:

Time taken for tests:   19.050 seconds
Requests per second:    26246.18 [#/sec] (mean)
Time per request:       0.381 [ms] (mean)
Time per request:       0.038 [ms] (mean, across all concurrent requests)
Transfer rate:          21632.59 [Kbytes/sec] received

Time taken for tests:   18.771 seconds
Requests per second:    26636.49 [#/sec] (mean)
Time per request:       0.375 [ms] (mean)
Time per request:       0.038 [ms] (mean, across all concurrent requests)
Transfer rate:          21954.29 [Kbytes/sec] received

Time taken for tests:   17.060 seconds
Requests per second:    29308.97 [#/sec] (mean)
Time per request:       0.341 [ms] (mean)
Time per request:       0.034 [ms] (mean, across all concurrent requests)
Transfer rate:          24157.01 [Kbytes/sec] received

Time taken for tests:   17.196 seconds
Requests per second:    29076.06 [#/sec] (mean)
Time per request:       0.344 [ms] (mean)
Time per request:       0.034 [ms] (mean, across all concurrent requests)
Transfer rate:          23965.04 [Kbytes/sec] received




|                       | Tiempo (s) | solicitudes/segundo [#/sec] | tiempo por respuesta [ms]| velocidad de transeferencia [Kbytes/sec] |
| --------------------- | :--------: | :-------------------------: | :----------------------: | :-------------------------------------:  |
| Contenedor prueba 1   | 26.313     | 19001.70                    | 0.526                    | 6698.84                                  |
| Contenedor prueba 2   | 23.532     | 21247.82                    | 0.471                    | 7490.69                                  |
| Contenedor prueba 3   | 23.696     | 21100.41                    | 0.474                    | 7438.72                                  |
| Contenedor prueba 4   | 23.959     | 20869.29                    | 0.479                    | 7357.24                                  |
|                       |            |                             |                          |                                          |
| Jaula      prueba 1   |   19.050   | 26246.18                    | 0.381                    | 21632.59                                 |
| Jaula      prueba 2   |  18.771    | 26636.49                    | 0.375                    |21954.29                                  |
| Jaula      prueba 3   |   18.771   | 29308.97                    | 0.341                    | 24157.01                                 |
| Jaula      prueba 4   |   17.196   | 29076.06                    | 0.341                    | 23965.04                                 |


Y a continuación muestro las medias de los resultados obtenidos para ver mejor la comparación:

|       Medias          | Tiempo (s) | solicitudes/segundo [#/sec] | tiempo por respuesta [ms]| velocidad de transeferencia [Kbytes/sec] |
| --------------------- | :--------: | :-------------------------: | :----------------------: | :-------------------------------------:  |
| Contenedor            |   24,375   |       20554,805             |      0,4875              |     7246,3725                            |
| Jaula                 |   18,447   |       27816,925             |      0,3595              |    22927,2325                            |



Vemos que la jaula da mejores prestaciones, vemos que son cifras algo superiores, sobre todo en la velocidad de transeferencia: mejoran bastante los resultados del contenedor aún siendo un ataque con la utilidad "ab" no muy agresivo.





