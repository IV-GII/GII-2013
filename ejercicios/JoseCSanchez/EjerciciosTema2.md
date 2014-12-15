# Ejercicio tema 2

## Ejercicio 1

Voy a instalar nodeenv para node.js, aprovechando que nuestro proyecto de prácticas está implementado en ese lenguaje. En mi caso lo instalaré en Ubuntu 14.04.

Lo primero que hay que hacer es instalar el paquete python-setuptools.

```sh
sudo apt-get install python-setuptools
```

A continuación, ejecutamos el siguiente comando:

```sh
sudo easy_install nodeenv
```

Para poder crear un entorno nuevo y activarlo, primero habrá que intalar el paquete python-virtualenv.

```sh
sudo apt-get install python-virtualenv
```

Una vez instalado, paso a activarlo de la siquiente manera:

```sh
virtualenv env

. env/bin/activate
```

Para mostrar el uso del nodeenv, muestro la versión que se me ha instalado, con los comandos:
```sh
(env) $ pip install nodeenv

(env) $ nodeenv --version
```
[](http://fotos.subefotos.com/abcd9f43f477d4a528e938a3763af159o.png)