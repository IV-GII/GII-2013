#Ejercicios Tema 7. [Francisco Javier Expósito Cruz](http://github.com/franexposito)

##Gestión de infraestructuras virtuales
###Ejercicio1.
Chef es una herramienta para la gestión de configuraciones. Es decir, se encarga de instalar y configurar las aplicaciones en servidores o incluso estaciones de trabajo. Con él podemos realizar desde configuraciones básicas como establecer la hora del sistema, el idioma… hasta cosas tan complejas como levantar y configurar un cluster entero.  

En una máquina tipo ubuntu, la forma más sencilla es usando el paquete Omnibus proporcionado por Opscode:  
```
wget -O- https://www.opscode.com/chef/install.sh | sudo bash
```

###Ejercicio 2.
Creamos un fichero ruby con el nombre que prefiramos, en mi caso ejercicio2.rb, y añadimos la información necesaria para realizar nuestra receta. Comenzaremos con la creación de un directorio y un fichero, dentro de nuestra receta ejercicio2.rb añadimos lo siguiente:  

```
directory 'carpeta/'
file "carpeta/receta" do
owner "franexposito"
group "franexposito"
mode 00777
action :create
content "Creado desde receta "
end
```

Para ejecutarlo usamos chef-apply ejercicio2.rb.

###Ejercicio 3.
YAML es un formato de serialización de datos legible por humanos inspirado en lenguajes como XML, C, Python y Perl.  
```
uno:"dos"
tres:
-4
-5
-"Seis"
-
-siete:8
-nueve:[10,11]
```
