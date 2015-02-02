Seminario de Ruby de Julio Martínez Martínez-Checa
============================ 

# Una introducción ligera al lenguaje Ruby

## Ejercicio 1 ##
**Instalar Ruby y usar**

**```ruby --version```**

**para comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.**

Instalamos todo lo que hace falta con este comando:

```
$ sudo apt-get install ruby irb rubygems rdoc
```

Ahora vemos nuestra versión con

```
$ ruby --version
```

Mi versión es ruby 2.1.5p273 (2014-11-13) [x86_64-linux-gnu]

## Ejercicio 2 ##

**Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.**

```ruby
#!/usr/bin/ruby
n=10
for i in 1..n
  puts "#{i}"
end
```

Salida:

![salida1](http://i.imgur.com/PiTMLJC.png)

## Ejercicio 3 ##
**¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.**

```ruby
#!/usr/bin/ruby
    
	compra = {
		:fruta => {:naranjas => 5, :peras => 3, :manzanas => 8},
		:carne => {:hamburguesas => 6, :ternera => 4, :cerdo => 4, :pollo => 2},
		:pescado => {:merluza => 5, :lenguado => 3}
	}
	
	compra.keys().each() do |linea|
		puts compra[linea]
	end
```

Salida:

![salida2](http://i.imgur.com/1aOIwUm.png)

## Ejercicio 4 ##
**Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve.**

```ruby
#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require 'net/http'

    def fecha()
        response = Net::HTTP.get_response(ARGV[0],'/')     
        return response['date'].to_s
    end

    def tipo()
        response = Net::HTTP.get_response(ARGV[0],'/')     
        return response['content-type'].to_s
    end
	
	def contenido()
		response = Net::HTTP.get(ARGV[0],'/')
		return response
	end

    url = ARGV[0]
	
	if url == nil
		puts 'Missing argument: URL'
		exit 1
	end

    puts "URL: " + url
    puts "Sevidor: "+ fecha()
    puts "Tipo de contenido: "+ tipo()
	puts "Contenido html: \n" + contenido()
```

Salida:

![salida3](http://i.imgur.com/3sl9IcA.png)

## Ejercicio 5 ##

**Ver si está disponible Vagrant como una gema de Ruby e instalarla.**

Miramos las gemas disponibles con:

```
$ gem search --remote vagrant
```
Y posteriormente, instalamos Vagrant con:

```
$ sudo gem install vagrant
```