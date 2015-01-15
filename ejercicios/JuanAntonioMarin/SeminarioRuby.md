##Seminario de Ruby:

###Ejercicio 1:

Instalar Ruby y usar

ruby --version
para comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.

Para instalar ruby uso:

````
sudo apt-get install ruby-full
````

Ejecuto ruby --version

<img src="http://i59.tinypic.com/2cypdhl.jpg"/>

###Ejercicio 2:

Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.

````
#!/usr/bin/ruby
variable = 10;
for i in 1..variable
    puts "#{i}"
end
````

Funcionando:

<img src="http://i59.tinypic.com/mbhb2d.jpg"/>

###Ejercicio 3:

¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.

Se pueden crear las estructuras como se quieren ya que no son tipados y aceptan todo tipo de anidamientos:

````
#!/usr/bin/ruby
arrayDeHashes = {
    :has =>{
   	 :es => "es",
   	 :una => "una",
   	 :prueba => "prueba"
    },
    :has2 =>{
   	 :es => "es",
   	 :una => "una",
   	 :prueba => "prueba"
    }
}
puts arrayDeHashes
````

Funcionando:
<img src="http://i59.tinypic.com/14jm7g7.jpg"/>

###Ejercicio 4:


Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve

````
#!/usr/bin/ruby
require 'net/http'
url = "www.factorypaint.es"

puts "URL: " + url
puts "Servidor: "+ Net::HTTP.get_response(url,'/')['server'].to_s
puts "Tipo de contenido: "+ Net::HTTP.get_response(url,'/')['content-type'].to_s
puts "Localizacion: "+ Net::HTTP.get_response(url,'/')['location'].to_s
````

Funcionando:

<img src="http://i58.tinypic.com/262qoop.jpg"/>

###Ejercicio 5:

Ver si está disponible Vagrant como una gema de Ruby e instalarla.

He tenido que instalar la version 1.9.1 de ruby

````
sudo apt-get install ruby1.9.1
````

Ahora miramos si en esta version esta Vagrant:

````
gem search --remote vagrant
````

Ya si sale en el listado pues la instalamos:

````
sudo gem install vagrant
````





