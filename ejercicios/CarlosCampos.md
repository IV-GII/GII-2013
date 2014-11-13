<!-- #Carlos Campos Fuentes -->
##Introducción a la infraestructura virtual: concepto y soporte físico

###Ejercicio 1
Para realizar este ejercicio, he escogido este [servidor](http://www.dell.com/es/empresas/p/poweredge-t110-2/pd?oc=pet110ii04&model_id=poweredge-t110-2)

Dicho servidor tiene un coste de:
* 1579 € sin IVA
* 1910,59 con IVA

####Amortización a 4 años
Deduciremos un 25% anual, por lo tanto:
* Primer año -> 1579 * 0,25 = 394,75
* Segundo año -> 1579 * 0,25 = 394,75
* Tercer año -> 1579 * 0,25 = 394,75
* Cuarto año -> 1579 * 0,25 = 394,75

####Amortización a 7 años
Deduciremos al principio lo máximo posible para así poder rebajar lo máximo posible la inversión inicial, por lo tanto:
* Primer años -> 1579 * 0,25 = 394,75
* Segundo año -> 1579 * 0,20 = 315,80
* Tercer año -> 1579 * 0,15 = 236,85
* Cuarto año -> 1579 * 0,10 = 157,90
* Quinto año -> 1579 * 0,10 = 157,90
* Sexto año -> 1579 * 0,05 = 78,95
* Septimo año -> 1579 * 0,05 = 78,95

###Ejercicio 2
Para este ejercicio, utilizaremos las dos grandes compañias de servicio cloud, que son [Amazon EC2](http://aws.amazon.com/es/ec2) y [Google Compute Engine](https://cloud.google.com/compute/).

En el caso de Amazon EC2, vamos a utilizar el **m3.xlarge**, sus características son:  
	CPU -> 4  
	RAM -> 15  
	Precio -> 0,280 $/h  

En el caso de Google Compute Engine, utilizaremos **n1-standard-4**, el cuál es similar al anterior:  
	CPU -> 4  
	RAM -> 15  
	Precio -> 0,252 $/h  

**Calcular coste anual usando el 1%**  
	Amazon EC2: 0,280 $/h * 87,6 h = 24,528 $ -> 19,2247 €  
	GCE (Google Compute Engine): 0,252 $/h * 87,6 h = 22,0752 $ -> 17,3022 €  

**Calcular coste anual usando el 10%**  
	Amazon EC2: 0.280 $/h * 876 h = 245,28 $ -> 192,247 €  
	GCE: 0.252 $/h * 876 h = 220,752 $ -> 173,022 €  


###Ejercicio 3  
#####Apartado a  
Comentado en el [foro](https://github.com/JJ/GII-2014/issues/71)  

#####Apartado b  
Aprovechando un [programa](https://github.com/ccamposfuentes/DAI/blob/master/p1/e1.py) sencillo desarrollado en la asignatura de **Desarrollo de Aplicaciones para Internet**.  
- En primer lugar, tenemos que descargar [cde](https://github.com/downloads/pgbovine/CDE/cde_2011-08-15_64bit), en mi caso la versión de 64 bits.  
- Tan solo tenemos que ejecutar el programa:  
		`./cde_2011-08-15_64bits ./e1.py  `
- Podemos ver que se ejecuta el programa perfectamente en la siguiente imágen.  
		![Imagen](http://i.imgur.com/cqi2xzt.png)

###Ejercicio 4  
Tutorial de docker realizado, comprobar en la siguiente imágen ![imágen](http://i.imgur.com/cZKeDaO.png)  

###Ejercicio 5  
Para instalar git en nuestro servidor linux, basta con ejecutar el siguiente comando como usuario root
		`apt-get install -y git`  

###Ejercicio 6  
1. Creamos el proyecto a través de la página web de github y lo clonamos en nuestro equpo a través del comando:  
	`git clone git://github.com/<repositorio>`  

2. Una vez qu tenemos el repositorio creado, modificas el archivo readme.md y para actualizarlos debemos de ejecutar:  
	`git commit README.md`  
	`git commit -m "Nombre del commit"`  

Podemos ver un archivo README.md de un repositorio personal con el texto personalizado en la siguiente imágen:
![Imagen readme.md](http://i.imgur.com/Myjv3bF.png)  

###Ejercicio 7  
En mi instalación de linux (Xubuntu), se encuentra instalado en el directorio:  
	`/sys/fs/cgroup`  

El contenido de la carpeta es el que podemos ver en la siguiente imágen:  
	![Imagen cgroup](http://i.imgur.com/3hVvhNY.png)  

###Ejercicio 10
Mi procesador es: Intel Core 2 Duo  

Al ejecutar el comando, no me aparece nada por pantalla, por lo que no tengo los
dos  

###Ejercicio 11  
Tras ejecutar *kvm-ok*, nos aparece que la CPU no lo soporta.  

	"INFO: Your CPU does not support KVM extensions"  

### Ejercicio 12  
Comentado en el [foro](https://github.com/JJ/GII-2014/issues/72)


## Creando aplicaciones en la nube: Uso de PaaS y SaaS

### Ejercicio 1

En mi caso, voy a instalar el entornio virtualenv para **Python**, para ello,
si no lo tenemos intalado, necesitamos instalar **pip**:

	apt-get install python-setuptools python-dev build-essential
	easy_install pip

Una vez que tenemos instalado pip, tenemos que instalar **virtualenv**:

	pip install virtualenv

Para iniciarlo debemos de hacerlo de la siguiente manera:

	virtualenv ENV
	virutalenv entorno_virtual
	source entorno_virtual/bin/activate

Una vez que hemos ejcutado los tres comandos, sabremos que estamos en el entorno
virtual puesto que el prompt cambia de **$** a **(entorno_virtual)**.

### Ejercicio 2

En mi caso, he elegido registrarme en [Heroku](http://heroku.com), tan solo hace falta, como podemos ver en la siguiente imágen introducir tu correo electrónico y esperar a que te manden un email de confirmación.

![Registro Heroku](http://i.imgur.com/kKhxkyk.png)

En el correo que nos envían tan solo basta con pulsar sobre el enlace de confirmación y no redirige a una página en la que nos pedirá que creemos la contraseña para nuestro usuario como podemos ver en la siguiente imagen.

![Contraseña Heroku](http://i.imgur.com/xsCvAfh.png)

Nos aparece un enlace para acceder al panel de administración y ya tenemos nuestra cuenta operativa tal y como puedes ver en las siguientes imagenes.

![Heroku](http://i.imgur.com/CU1PSoB.png)

![Panel de administración - Heroku](http://i.imgur.com/ME61sM7.png)

### Ejercicio 3

El primer paso que debemos de realizar es registrarnos en [Openshift](https://www.ohttps://www.openshift.com/app/account/new) y rellenamos los datos que nos pide, éstos podemos verlos en la siguiente imágen:

![Registro Openshift](http://i.imgur.com/gUpEvRd.png)

Al igual que con Heroku, nos manda un email para verificar nuestra cuenta, en el cuál tenemos que pulsar sobre el link y en la página que nos abre aceptar los terminos legales.  

Una vez realizado estos pasos, tal y como podemos observar ya podemos empezar a utilizar nuestra cuenta en OpenShift.

![Panel Openshift](http://i.imgur.com/16rTLdy.png)

Para empezar a crear nuestro **wordpress**, tans olo tenemos que pulsar sobre *->Create your first application now*, el cuál nos llevara a un panel donde podemos observar distintas herramientas y aplicaciones disponibles para instalarlas, en nuestro caso buscamos y pulsamos sobre wodrpess.

![Openshift wordpress](http://i.imgur.com/yZehKM2.png)  

Una vez que hemos pulsado nos lleva a otra página donde tan solo debemos de configurar la dirección de nuestro wordpress y todo lo demás dejarlo tal y como viene por defecto

![Dominio wordpress openshift](http://i.imgur.com/UVfupGv.png)

Tras un tiempo instalandose, se nos abre una pantalla donde tenemos que pulsar sobre **Not now, continue**, y nos aparecera la información que podemos observar en la siguiente captura.

![Imgur](http://i.imgur.com/EGIpWfZ.png)

Una vez que hemos realizado estos pasos, ahora solo necesitamos instalar wordpress, para ello debemos de ir a la web que hemos establecido en mi caso [php-ccamposfuentesiv.rhcloud.com](http://php-ccamposfuentesiv.rhcloud.com) y realizar la instalación y configuración de wordpress.

![Imgur](http://i.imgur.com/D8kyjD9.png)
![Imgur](http://i.imgur.com/D3q62oC.png)
