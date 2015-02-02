###Ejercicio 6:

####1. Instalar juju.

Añadimos el repositorio:

	sudo add-apt-repository ppa:juju/stable

Actualizamos los repositorios:

    sudo apt-get update

Instalamos la aplicación:

    sudo apt-get install juju-core

####2. Usándolo, instalar MySQL en un táper.

Inicializamos juju:

	sudo juju init

Editamos el fichero ~/.juju/environments.yaml y buscamos la línea:

	default: amazon

y la cambiamos por:
	default: local

Para establecer que por defecto vamos a trabajar localmente y no con amazon.

También debemos instalar MongoDB (ya instalado en el apartado anterior)

	sudo apt-get install mongodb-server

Para instalar MySQL, antes establecemos que vamos a trabajar en local:

	sudo juju switch local

Creamos un táper:

	sudo juju bootstrap

Instalamos MySQL dentro:

	sudo juju deploy mysql