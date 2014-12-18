Ejercicios de Juan Francisco Rodríguez Vílchez
================================================

## Ejercicios Tema 2: Creando aplicaciones en la nube: Uso de PaaS ##

### Ejercicio 1 ###

**Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).**

Antes de poder instalar el entorno virtual es necesario la instalación de "pip":

![captura1](http://i.imgur.com/Mm1eCVX.png)

Posteriormente, procedo a instalar virtualenv para Python:

![captura2](http://i.imgur.com/1AOm7u4.png)

Lo configuro con :

![captura3](http://i.imgur.com/Dflmjnl.png)

Lo que hace es crear "ENV/lib/pythonX.X/site-packages",para que funcione cualquier librería. También crea "ENV/bin/python", que es un intérprete de Python que usará el entorno.

Finalmente, he comprobado si funciona correctamente:

![captura4](http://i.imgur.com/lr07SFE.png)

Tutorial seguido para crear proyecto: http://rukbottoland.com/blog/tutorial-de-python-virtualenv/

Como se puede ver en la captura anterior, con:

```sh
virtualenv mi_proyecto
```
Crea nuestro proyecto con las carpetas 

mi_proyecto/
    bin/
    include/
    lib/
    
Por lo que tenemos el entorno virtual de Python listo para ser utilizado.

***

### Ejercicio 2 ###

**Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.**

He elegido registrarme en Heroku.

Primero nos piden poner el correo para enviarnos el enlace de validación y poder registrarnos:

![captura5](http://i.imgur.com/4FtvoZ2.png)

Luego hay que acceder al correo y aceptar el enlace que nos llevará al registro en la página de Heroku:

![captura6](http://i.imgur.com/VjeyQyO.png)

Una vez registrado, ya puedo acceder correctamente a la interfaz de Heroku:

![captura7](http://i.imgur.com/cZiWnfg.png)

También me he dado de alta en Openshift para el ejercicio 14:

![captura8](http://i.imgur.com/55v20qM.png)

***

### Ejercicio 3 ###

**Crear una aplicación en OpenShift y dentro de ella instalar WordPress.**

Una vez registrado en Openshift, buscamos en la interfaz lo siguiente:

![captura9](http://i.imgur.com/n0AmxOq.png)

y le damos a WordPress.

Elegimos la url que queramos:

![captura10](http://i.imgur.com/BR3ZuhF.png)

Y aceptamos. Ya tenemos la aplicación creada:

![captura11](http://i.imgur.com/97SJEMT.png)

Posteriormente, ya se encuentra WordPress listo para usarse (previamente hay que registrarse):

![captura12](http://i.imgur.com/F9VRxrS.png)

Llegados a este paso, tenemos la aplicación de WordPress lista para ser usada y poder crear entradas:

![captura13](http://i.imgur.com/LQbWg0t.png)

Aqui muestro un ejemplo de creación de una entrada en WordPress:

![captura14](http://i.imgur.com/0OpvoAM.png)

***

### Ejercicio 4 ###

**Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.**

He seguido el siguiente tutorial: https://developers.google.com/apps-script/guides/menus

He accedido a través de Herramientas -> Editor de secuencias de comandos y he añadido el siguiente script:

![captura15](http://i.imgur.com/F5Gg3lK.png)

En el script anterior, cambio el nombre a un menú al que he llamado "Menú Custom" con dos item "Sublime" y "Precioso":

![captura16](http://i.imgur.com/LLpcG8j.png)

 Posteriormente, he creado dos funciones (que se llaman a través de los item anteriores) de tal forma que cuando se seleccione algún item se lance una alerta.
 
Al cliquear en el item "Sublime", se llama a la función "sublime" y se lanza la siguiente alerta:
 
![captura17](http://i.imgur.com/eMJBoxz.png)

Al cliquear en el item "Precioso", se llama a la función "precioso" y se lanza la siguiente alerta:
 
![captura18](http://i.imgur.com/XAMrWEb.png)

### Ejercicio 5 ###

**Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**

El sistema de automatización que he encontrado ha sido A-A-P (a Python based build tool). Es una "especie" de make pero adaptado para Python.

En este [enlace](http://www.calmar.ws/aap/) nos explican como usar esta "especie" de make y todas las variables necesarias para ello.

### Ejercicio 6 ###

**Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.**

He elegido el PaaS "OpenShift". Para poder configurar y gestionar las aplicaciones creadas en OpenShift, es necesario la instalación de "rhc" que nos proporciona las herramientas necesarias para poder gestionar las aplicaciones desde la terminal. Para instalar "rhc" hay que instalar ruby y posteriormente, usarlo para poder descargar "rhc":

```sh
sudo gem install rhc
```

Una vez instalado, procedemos a insertar nuestros datos de OpenShift en "rhc":

```sh
rch setup
```
Una vez instalado y configurado, ya podemos ver las aplicaciones que tenemos en nuestra cuenta de OpenShift:

![captura19](http://i.imgur.com/DBvCquT.png)

Usando git podemos descargar la aplicación, de tal forma, que dentro de ella se encuentra el fichero ".openshift/action_hooks/build" que es el utilizado para desplegar de forma automatizada la aplicación.

Mirando la documentación en el apartado ["Modificando las aplicaciones"](https://developers.openshift.com/en/getting-started-modifying-applications.html#hot-deployment), nos informan sobre esta forma de automatización explicada anteriormente y de otras dos más. De forma opcional, podemos elegir otras formas de automatización de nuestra aplicación, como son:

* Usando Jenkins: Servidor con todas las funciones de integración continua (CI) que puede ejecutar, construir, testear y programar tareas que se integran con las aplicaciones de OpenShift.
* Usando hot deployment: Con hot deployment se aplican los cambios al código de la aplicación sin necesidad de reiniciar la aplicación, lo que aumenta la velocidad de despliegue y minimiza el tiempo de inactividad de la aplicación.



### Ejercicio 7 ###

**Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**

[Selenium](http://selenium-python.readthedocs.org/installation.html#introduction) para Python.

Selenium nos proporciona una API para poder hacer tests usando Selenium WebDriver. Para instalar Selenium, hay que ejecutar la siguiente sentencia:

```sh
pip install selenium
```

Selenium se usa principalmente para escribir test adaptados a una determinada situación que elijamos. Como por ejemplo:

```sh
import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

class PythonOrgSearch(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Firefox()

    def test_search_in_python_org(self):
        driver = self.driver
        driver.get("http://www.python.org")
        self.assertIn("Python", driver.title)
        elem = driver.find_element_by_name("q")
        elem.send_keys("pycon")
        assert "No results found." not in driver.page_source
        elem.send_keys(Keys.RETURN)

    def tearDown(self):
        self.driver.close()

if __name__ == "__main__":
    unittest.main()
```

Dando como resultado el número de test realizados, el tiempo que han tardado y si se podido realizar el test o no ("OK").

```sh
python test_python_org_search.py
.
----------------------------------------------------------------------
Ran 1 test in 15.566s

OK
```

