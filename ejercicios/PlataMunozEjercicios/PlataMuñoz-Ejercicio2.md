##1. Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).

Vamos a instalar virtualenv para Python.


pip install virtualenv

O bien podemos hacer:

`curl -O https://pypi.python.org/packages/source/v/virtualenv/virtualenv-X.X.tar.gz
$ tar xvfz virtualenv-X.X.tar.gz
$ cd virtualenv-X.X
$ [sudo] python setup.py install`


Para probar el entorno virtual:

`virtualenv proyecto`


##2. Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.

Me he dado de alta en OpenShift.

![OpenShift](http://i.imgur.com/9QJTLOu.png)


##3. Crear una aplicación en OpenShift y dentro de ella instalar WordPress.
Dominio: http://applicationname-ivplata.rhcloud.com

Url app: http://word-ivplata.rhcloud.com

![BackEnd de la app](http://i.imgur.com/XDgnmqM.png)


##4 Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.


Hemos hecho este codigo para sacar datos de una hoja de cálculo.

`function leerDatos(){
  var hoja=SpreadsheetApp.getActiveSpreadsheet();
  var posicion = hoja.getActiveCell().getRow();
  
  var nombre=hoja.getRange("A"+posicion).getValue();
  var apellido=hoja.getRange("B"+posicion).getValue();
  
  Browser.msgBox(":::Datos:::","Nombre: "+nombre +"\n Apellido: " +apellido,Browser.Buttons.OK);
  
}`


![Screen](http://i.imgur.com/BEBaSLR.png)


##7. Buscar un entorno de pruebas para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.

He encontrado mock (para entorno python) y aquí un tutorial para aprender a utilizarlo http://www.vogella.com/tutorials/Mockito/article.html
































