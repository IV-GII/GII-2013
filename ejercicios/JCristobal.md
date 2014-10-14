#Ejercicios de JCristobal



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


##Ejercicio 2

Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.


El primer servicio que consulto es el de [Acens](http://www.acens.com/cloud/vps/) (opción VPS BUSINESS)con las características:

* 50 GB espacio en disco
* 2 GB memoria RAM
* 1.000 GB de transferencia

Con un precio de 15.75 €/mes. Un año costaría 188.40 €

Si lo usamos un 1% quedaría en 188.40€/año *0.01 = 1.88 €/año

y si lo usamos al el 10%: 188.40€/año * 0.1 = 18.84 €/año


A continuación vemos un servicio similar en la página de [Hostinger](http://www.hostinger.es/hosting-vps) el "Plan 2":

* 40 GB espacio en disco
* 2048 MB (2 GB) de RAM
* 2000 GB de transferencia

Con un precio de 13.99 €/mes. Al año 167.88 €

Si lo usaramos un 1% quedaría en 167.88€/año *0.01 = 1.67 €/año

y usandolo el 10%: 167.88€/año * 0.1 =  16.78 €/año



Ya que ofrecen servicios parecidos tienen un precio similar al mes, con lo que se traduce en un gasto parecido a lo largo del año como podemos ver en los resultados.


##Ejercicio 3

Parte 1: Se puede consultar en [comentario en el foro](https://github.com/JJ/GII-2014/issues/71#issuecomment-58538032)

Parte 2: Aprovecho un programa de la asignatura DAI en python para empaquetarlo con CDE.

Primero lo instalo: ejecuto sudo apt-get install cde

Y lo empaqueto con CDE: cde python act1.py

En el directorio: "~/Escritorio/cde-package/cde-root/home/cristobal/Escritorio$"  ejecuto  ./python.cde act1.py 

Pantallazo de los pasos anteriores: ![imagen1](http://i.imgur.com/dn1qoxB.png)


##Ejercicio 4

Tutorial de línea de órdenes de docker realizado:
![imagen2](http://i.imgur.com/UevZw5O.png)



##Ejercicio 5


Lo instalo basándome en en [enlace a la presentación que nos proporciona el profesor](http://www.slideshare.net/jjmerelo/introduccin-al-uso-git-y-github-para-trabajo-colaborativo) 

Simplemente ejecuto: sudo apt-get install git


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


##Instrucciones sobre restricción y medición del uso de recursos: cgroups

Accedo al direcotrio de cgroups  ( /sys/fs/cgroup )

Monto el sistema de ficheros virtual:  sudo mount -t cgroup cgroup /sys/fs/cgroup/

Crear un grupo de control: sudo mkdir buenos  (y compruebo que se crean subdirectorios específicos para cada grupo de control)

creo también el grupo "malos" y asignamos las CPUs por omisión de las tareas

echo 0 > /cgroup/malos/cpuset.cpus 
echo 0 > /cgroup/malos/cpuset.mems 

y en "buenos" también

echo 0 > /cpuset.cpus 
echo 0 > /cpuset.mems 


















