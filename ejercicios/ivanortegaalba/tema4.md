# TEMA 4: Virtualización ligera usando contenedores

## Ejercicio 1

Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

```
ivan@ivan-VirtualBox:~$ sudo apt-get install lxc
```
Comprobamos compatibilidad con:

```
lxc-checkconfig
```
![](images/Captura de pantalla 2014-12-16 a las 4.47.56.png)

## Ejercicio 2

Creamos el contenedor instalando ubuntu en el:

```
ivan@ivan-VirtualBox:~$ sudo lxc-create -t ubuntu -n contenedor-ubuntu
  [...]
  Download complete
  Copy /var/cache/lxc/trusty/rootfs-amd64 to /var/lib/lxc/contenedor-ubuntu/rootfs ...
  Copying rootfs to /var/lib/lxc/contenedor-ubuntu/rootfs ...
  Generating locales...
  es_ES.UTF-8... up-to-date
  Generation complete.
  Creating SSH2 RSA key; this may take some time ...
  Creating SSH2 DSA key; this may take some time ...
  Creating SSH2 ECDSA key; this may take some time ...
  Creating SSH2 ED25519 key; this may take some time ...
  update-rc.d: warning: default stop runlevel arguments (0 1 6) do not match ssh Default-Stop values (none)
  invoke-rc.d: policy-rc.d denied execution of start.

  Current default time zone: 'Europe/Madrid'
  Local time is now:      Tue Dec 16 05:01:21 CET 2014.
  Universal Time is now:  Tue Dec 16 04:01:21 UTC 2014.


  ##
  # The default user is 'ubuntu' with password 'ubuntu'!
  # Use the 'sudo' command to run tasks as root in the container.
  ##

```
Nos conectamos al contenedor:

```
ivan@ivan-VirtualBox:~$ sudo lxc-start -n contenedor-ubuntu
```

![](images/Captura de pantalla 2014-12-16 a las 5.15.55.png)

Vemos que efectivamente existen tales puentes:

![](images/Captura de pantalla 2014-12-16 a las 5.17.44.png)

# Ejercicio 3

Crear y ejecutar un contenedor basado en Debian.

Para ello usamos el mismo comando que antes, solo que cambiamos el SO:

```
ivan@ivan-VirtualBox:~$ sudo lxc-create -t debian -n contenedor-debian
```

# Ejercicio 4

Nos descargamos el script en la carpeta templates, tal y como indica Óscar en la docu:

ivan@ivan-VirtualBox:~$ sudo wget -P /usr/share/lxc/templates/ https://raw.github.com/globalcitizen/lxc-gentoo/master/lxc-gentoo

Le damos permisos de ejecución:

```
ivan@ivan-VirtualBox:~$ chmod +x /usr/share/lxc/templates/lxc-gentoo
```

Ahora, creamos el contenedor:

```
/usr/share/lxc/templates/lxc-gentoo create
```

# Ejercicio 10

Para instalar Docker nos basta con el script:

```
sudo apt-get update
sudo apt-get install docker.io
source /etc/bash_completion.d/docker.io
[ -e /usr/lib/apt/methods/https ] || {
  apt-get update
  apt-get install apt-transport-https
}
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.com/ubuntu docker main\
> /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install lxc-docker
```

Dockerfile:

```
# This is a comment
FROM ubuntu:latest
MAINTAINER Evenge <desarrollo.evenge@gmail.com>

RUN apt-get update && apt-get install -y python
RUN apt-get install -y python-setuptools
RUN easy_install pip
RUN apt-get install -y python-dev build-essential
RUN pip install webapp2
RUN pip install jinja2

# Instalamos wget para poder descargar archivos
RUN apt-get install -y wget

# Descargamos el sdk de Google App Engine
RUN wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.17.zip --no-check-certificate

# Instalamos la herramienta zip
RUN apt-get install -y zip

# Descomprimimos el fichero descargado, con lo que ya tendremos disponibles las herramientas del sdk
RUN unzip google_appengine_1.9.17.zip

#Instalamos el google-cloud-sdk y configuramos el proyecto Evenge
# RUN curl -sSL https://sdk.cloud.google.com | bash
# RUN gcloud auth login
# RUN gcloud config set project <google-cloud-project-id>

# Una vez hecho esto ya tenemos instalado el entorno de desarrollo necesario para construir y ejecutar aplicaciones que luego funcionarán bajo Google App Engine

RUN apt-get install -y git
RUN git clone git@github.com:evenge/EVENGE.git
RUN cd gestor-de-eventos
RUN git branch -b $USER
```
