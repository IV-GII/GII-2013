#Ejercicios de JCristobal


##Sesión 29-sept-2014

##Ejercicio 1

Consulto el servidor TS-670 NAS 6 discos - Intel Atom Doble núcleo 2.6GHz, RAM 2GB

[Enlace al producto](http://qloudea.com/catalog/product/view/id/2481?gclid=CjwKEAjwhqShBRDS95LciqqaonISJADj1rgaQfhaESZeoiISz-U8dcOQ74W02TrdbISaoKDFUQjPLBoCjHfw_wcB)

Tiene un precio inicial de 1.111,57 € (IVA incluido)

que sin IVA (al 21%) quedaría en 878,14 €.

###Calculamos la amortización a 4 años, un 25% cada año ya que éste es el máximo que podemos deducir

* Primer año:  219,53 €
* Segundo año  219,53 €
* Tercer año:  219,53 €
* Cuarto año:  219,53 €


###Calculamos la amortización a 7 años
Variaremos el porcentage cada año, deduciendo los primeros años algo menos y aumentando

* Primer año: al 5%  43,90 €
* Segundo año al 5% 43,90 €
* Tercer año:  al 10%  87,81 €
* Cuarto año:  al 20%  175,62 €
* Quinto año:  al 20%  175,62 €
* Sexto año:  al 20%   175,62 €
* Septimo año:  al 20%  175,62 €


##Sesión 30-sept-2014

##Ejercicio 5


Lo instalo basándome en en [enlace a la presentación que nos proporciona el profesor](http://www.slideshare.net/jjmerelo/introduccin-al-uso-git-y-github-para-trabajo-colaborativo) 



Algún comando útil para usar:

Para descargarme todo: git clone

Para actualizarlo todo: git pull 

Modifico los ficheros que deseo y con git status veo que archivos he modificado para mayor seguridad

git add [archivo y ruta] del archivo modificado

git commit para indicar el comentario

(git commit -a para incluir el archivo en el commit)

git push para enviar


##Ejercicio 6

Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README. Modificar el readme y subir el fichero modificado

Creamos un readme.md con su commit correspondiente y lo añadimos al repositorio que queremos (objetivosIV en mi caso)
Para ello introduzco en línea de comandos:

touch README.md

git init

git add README.md

git commit -m "first commit"

git remote add origin https://github.com/JCristobal/objetivosIV.git

git push -u origin master


Para modificarlo accedemos a el repositorio y al archivo readme y realizamos los cambios (o mediante comandos de git mencionados antes).


##Ejercicio sobre restricción y medición del uso de recursos: cgroups















