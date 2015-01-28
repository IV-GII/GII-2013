# Ejercicios tema 4

## Ejercicio 1

Para instalar LXC en nuestra máquina, ejecutamos la orden:

```sh
sudo apt-get install lxc lxc-templates
```


## Ejercicio 2

Usando el comando **ifconfig -a**, o el comando **brctl show** podemos ver que se ha creado la partición lxcbr0, que es la que utiliza el contenedor para el acceso a internet.

![](http://fotos.subefotos.com/40a936fcd8d754f13dab64723ed5f28bo.png)


## Ejercicio 3

Para crear y ejecutar el contenedor basado en Debian, ejecutamos los siguientes comandos:

```sh
sudo lxc-create -t debian -n ubuntu
sudo lxc-start -n ubuntu
```


## Ejercicio 4

Instalamos lxc-webpanel con el comando:

```sh
wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash
```

![](http://fotos.subefotos.com/173a6979ebb1dbafbeeb1c95c364a970o.png)
![](http://fotos.subefotos.com/8a2d8d603f47b845d9a762191e36ca98o.png)

Una vez instalado, se accede desde el navegador en **http://localhost:5000**. Aparecerá un panel de acceso, donde introducimos el usuario y contraseña por defecto, los cuales son los dos **admin**. Una vez dentro, se elige la maquina virtual y ya podremos restringir los recursos de la máquina.

![](http://fotos.subefotos.com/a4feae8c7fe317c50154263c996d036ao.png)


## Ejercicio 6

Para instalar juju usamos los comandos que nos indica su [pagina web](https://jujucharms.com/get-started).

```sh
sudo add-apt-repository  ppa:juju/stable
sudo apt-get update
sudo apt-get install juju-quickstart
```


Para instalar MySQL en un táper dentro de juju, lo primero que hay que hacer es iniciarlo:

```sh
juju init
juju bootstrap
```

Una vez iniciado, paso a instalar MySQL con los siguientes comandos:

```sh
juju deploy mediawiki
juju deploy mysql
```

Por último, le indicamos que esa será nuestra base de datos:

`juju add-relation mediawiki:db mysql`


## Ejercicio 7

Para destruir toda la máquina anterior:

```sh
juju destroy-service mysql 
juju destroy-service mediawiki
sudo juju destroy-environment local
```

Para volver a crearla con mediawiki:

```sh
juju deploy mediawiki 
juju deploy msql
juju add-relation mediawiki msql 
juju expose mediawiki
```

El script en shell sería:

```sh
juju switch local

sudo juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:db mysql

juju expose mediawiki
```


## Ejercicio 8

```sh
sudo apt-get install kvm libvirt-bin
sudo apt-get install virtinst
```


## Ejercicio 10

Para instalar docker instroducimos en la linea de comandos:

```sh
sudo apt-get update
sudo apt-get install docker.io
```

Una vez instalado, si queremos comprobar la versión que tenemos introducimos el siguiente comando:

`docker -v`

![](http://fotos.subefotos.com/92e20968f28092a7196658272007fdd9o.png)


## Ejercicio 11

Para instalar una imagen alternativa basta con el siquiente comando,

`sudo docker pull imagen`

siendo **imagen** la imagen que queremos instalar. De esta manera, para intalar una imagen de ubuntu y otra de centos los comandos son:

```sh
sudo docker pull ubuntu
sudo docker pull centos
```

La imagen que incluye MongoDB es:

`sudo docker pull hairmare/mongodb`


## Ejercicio 12

Para crear un usuario nuevo en ubuntu se usan los siguientes comandos:

```sh
useradd -d /home/usuario -m usuario
passwd usuario
adduser usuario sudo
```

Una vez logeado con el nuevo usuario, instalo el nginx:

`sudo apt-get install nginx`


## Ejercicio 13

Para crear una imagen persistente con commit basta con utilizar el siguiente comando:

`sudo docker commit usuario IV`