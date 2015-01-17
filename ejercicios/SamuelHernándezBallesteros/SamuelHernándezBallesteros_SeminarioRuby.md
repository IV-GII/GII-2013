# Una introducción ligera al lenguaje Ruby

### Ejercicio 1
Instalar Ruby y usar ruby --version

He utilizado RVM (Ruby Version Manager). Esta es una estupenda aplicación de línea de comandos que nos permite gestionar, dentro de un mismo ordenador, varios entornos de intérpretes de Ruby y conjuntos de gemas (las gemas en Ruby podríamos decir que son como los JAR en Java).

Instalamos RVM junto con Ruby

	gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
    
    \curl -sSL https://get.rvm.io | bash -s stable --ruby

Si ejecutamos ruby --version

	ruby 1.9.3p484 (2013-11-22 revision 43786) [x86_64-linux]

###Ejercicio 2
Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.

```
#!/usr/bin/ruby
for i in 1..5
  puts "#{i}"
end
```

###Ejercicio 3
¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.

```
#!/usr/bin/ruby
arraydehashesdearrays = {
	:persona1 =>{
    		:nombre => "Samuel",
    		:apellidos => "Hernandez Ballesteros",
		:edad => 22,
    		:estado => false
    	},

    	:persona2 =>{
      		:nombre => "Jose Manuel",
    		:apellidos => "Fernandez Antunez",
		:edad => 32,
    		:estado => true
    	}
}

arraydehashesdearrays.keys().each() do |leng|
puts arraydehashesdearrays[leng]
end
```

###Ejercicio 4
Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve

```
#!/usr/bin/ruby
require 'net/http'

def getServidor(dir)
  return Net::HTTP.get_response(dir,'/')['server'].to_s
end

def getContent(dir)
  return Net::HTTP.get_response(dir,'/')['content-type'].to_s
end

url = ARGV[0] #Cogemos la URL

puts "URL: " + url
puts "Sevidor: "+ getServidor(url)
puts "Contenido: "+ getContent(url)
```

###Ejercicio 5
Ver si está disponible Vagrant como una gema de Ruby e instalarla.

Vemos si está con:

	gem search --remote vagrant

Si está la instalamos con:

	gem install vagrant

