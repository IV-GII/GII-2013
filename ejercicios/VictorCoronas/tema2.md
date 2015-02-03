##TEMA 2

#Clase del 20 de octubre de 2014

* [+]Ejercicio 1
 - A) Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).
 
- Voy a instalar el entorno virtual "virtualenv" para Python. Para ello vemos a instalar PIP, que nos sirve apra instalar paquetes de python.

    sudo apt-get install python-setuptools python-dev build-essential
    sudo easy_install pip

Una vez realizado estos pasos damos el definitivo para la instalación de "virtualenv".

    sudo pip install --upgrade virtualenv 

La forma de usarlo y activarlo es la siguiente:

    virtualenv ENV
    source bin/activate

El uso de "virtualenv" es muy sencillo, para ello simplemente creamos una entorno virtual:

    virtualenv mi_entorno

Una vez creado, entramos en el y lo activamos:

    cd mi_entorno
    source mi_entorno/bin/activate

Sabremos que estamos en el entorno virtual, porque nuestra terminal cambia de:

    $
 
 a
 
    (mi_entorno)$

* [+]Ejercicio 2
 - A) Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.

 Por probar diferentes servicios, me voya dar de alta en Heroku. Para ello nos damos de alta en [Registro Heroku](https://signup.heroku.com/www-home-top). Simplemente con introducir el correo electrónico es más que suficiente.
 Una vez registrado, te mandarán un correo para verificar el registro. Cuando le demos al enlace nos llevará a una página donde podremos elegir [nuestra contraseña](https://www.dropbox.com/s/uz8ysumr44kgw4s/Captura%20de%20pantalla%202014-11-09%20a%20la%28s%29%2018.02.26.png?dl=0). Una vez aceptada nuestra contraseña nos aparecera la siguiente página en la cual ya podremos proceder a usar [Heroku](https://www.dropbox.com/s/hxpdhmn704ugkzm/Captura%20de%20pantalla%202014-11-09%20a%20la%28s%29%2018.04.15.png?dl=0). [Panel de Heroku](https://www.dropbox.com/s/j74vla3g9eg9kpk/Captura%20de%20pantalla%202014-11-09%20a%20la%28s%29%2018.05.37.png?dl=0).


#Clase del 21 de octubre de 2014

* [+]Ejercicio 3
 - A) Crear una aplicación en OpenShift y dentro de ella instalar WordPress.
 
Lo primero que tenemos que hacer es registrarnos como en el caso de Heroku, para ello vamos a la página de [registro de OpenShift](https://openshift.redhat.com/app/account/new?__utma=222392261.655486696.1381573316.1381573316.1381573316.1&__utmb=222392261.2.10.1381573316&__utmc=222392261&__utmx=-&__utmz=222392261.1381573316.1.1.utmcsr=google%7Cutmccn=(organic)%7Cutmcmd=organic%7Cutmctr=(not%20provided)&__utmv=-&__utmk=111961607). Una vez que hemos rellenado todos los campos y nos hemos registrado satisfactoriamente, nos mandarán un correo para verificar nuestro resgistro, le damos al enlacen de verificación y nos aparecera la siguiente [página](https://www.dropbox.com/s/7gq23aihktadbo3/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.10.33.png?dl=0) y le damos a "Aceptar los términos". Cuando hayamos aceptado nos aparecera la siguiente página, donde le daremos a [Create your first application now](https://www.dropbox.com/s/ajekyxx09xkt4ch/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.12.12.png?dl=0) que nos mostrará el [panel de trabajo](https://www.dropbox.com/s/frizikrl9wpzkja/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.17.49.png?dl=0). Ahora unavez estemos ya en este panel de trabajo, nos encontraremos con una sección de [Instant app](https://www.dropbox.com/s/1itxucid9kocvi4/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.18.53.png?dl=0), donde seleccionaremos "WordPress4".
Una vez seleccionado "WordPress4", tendremos que rellenar el campo con la [dirección](https://www.dropbox.com/s/azit2zq4n1yobs2/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.25.22.png?dl=0) que queremos tener, el resto de opciones se quedan como estan, y le damos a "Create Application".
Cuando se haya creado, aparece lo [siguiente](https://www.dropbox.com/s/f06b29n2qdirhbu/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.27.38.png?dl=0), y le damos a "Not now, continue".[Ya esta creada](https://www.dropbox.com/s/dg9654hrycclidl/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.29.27.jpg?dl=0).

Ahora tenemos que registrarnos en [WordPress](https://www.dropbox.com/s/ancwhqe88zuvqgb/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.42.05.png?dl=0). Entraremos en el [panel de control de WordPress](https://www.dropbox.com/s/4scyktk2kutwx5d/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.43.36.png?dl=0).
Creo una ueva entrada, ya estaria todo [terminado](https://php-walkerazos.rhcloud.com/).

* [+]Ejercicio 4
 - A) Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.

Nos vamos a [Google Drive](https://www.dropbox.com/s/aptx9tbfm7ys7l4/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.54.46.png?dl=0) y creamos un nuevo documento de texto. Una vez creado el documento nos vamos a [Herrramientas -->Editor de secuencia de comandos..](https://www.dropbox.com/s/zttpeyothwvqndj/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.51.45.png?dl=0)
Ahora creamos el nuevo [Script](https://www.dropbox.com/s/ew3jmx20ah2kvaw/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2016.56.32.png?dl=0).

Una vez terminado nuestro [Script](https://www.dropbox.com/s/bbwj4y30pl7txxs/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2017.05.38.png?dl=0), lo ejecutamos, y en nuestro documento [aparecerá](https://www.dropbox.com/s/pvxyx4dmjnm6nde/Captura%20de%20pantalla%202014-11-11%20a%20la%28s%29%2017.08.45.png?dl=0).


#Clase del 27 de octubre de 2014

* [+]Ejercicio 5
 - A) Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.

Lo primero que tenemos que tener es tener [node.js](http://nodejs.org/), para ello aqui dejo un tutorial de como [instalar](http://geekytheory.com/instalacion-de-nodejs/).

Uno de los automatizadores de construcción de "node.js" es [Grunt](http://gruntjs.com/). Hay que [instalarlo](http://gruntjs.com/getting-started).
Para ello usamos el comando:

    npm install -g grunt-cli

* [+]Ejercicio 6
 - A) Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.

Como yo he usado tanto Heroku como OpenShift, en este caso voy a usar Heroku, por lo que el fichero de automatización de 
construcción es:

[/apps/:app/builds](https://blog.heroku.com/archives/2014/5/21/introducing_programmatic_builds_on_heroku)

EL proceso que sigue es que el nombre de la aplicación se le pasa un guión con la URL, a un archivo que contiene el código fuente, todo ello comprimo en dicho archivo.

Dicho Script coge las entradas y para ello usa "/apps/:app/builds", para poder crear así una nueva estructura dentro de "Heroku". Dentro de la plataforma de Heroku se identifica la nueva estructura, seuidamente pasa a estar en el estado "pendiente" y el siguiente paso sería a "Contrucción". Cuando la estructura se haya creado, pasaría a estar en estado "Éxito" o "Fracaso". De la salida se obtienen los resultados y se muestra por nuestra ventana de trabajo, si ha sido "Éxitosa", la estructura se despliega sola.

* [+]Ejercicio 7
 - A) Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.

Hay varios entornos de pruebas para node.js, pero es uno de los que más se suelen usar, [Sails.js](http://sailsjs.org/#/).

Aquí dejo como [instalarlo en diferentes sistemas](http://sailsjs.org/#/getStarted) y un poco más de infomación sobre él.