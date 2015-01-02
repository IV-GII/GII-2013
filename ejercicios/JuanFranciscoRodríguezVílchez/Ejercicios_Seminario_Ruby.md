
Ejercicios de Juan Francisco Rodríguez Vílchez
================================================

## Ejercicios Seminario de Ruby ##

### Ejercicio 1 ###

**Instalar Ruby y usar ruby --version para comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.**

He instalado Ruby mediante:

```sh
sudo apt-get install ruby
```
![captura](http://i.imgur.com/9EKCKdS.png)

### Ejercicio 2 ###

**Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.**

```ruby
#!/usr/bin/ruby
var=20
for i in 1..var
  puts "#{i}"
end
```
![captura](http://i.imgur.com/2jrCbFJ.png)

### Ejercicio 3 ###

**¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.**

```ruby
#!/usr/bin/ruby
    calificaciones = { 
	:notas => {:pedro => '2', :juan => '4', :julio => '10'}, 
	:aprobados => {"juanfran" => 'Matricula', "julio" => 'suspenso', "oscar" => 'suspenso'}, 
	:area => {"juanfran" => 'informatica', "julio" => 'magisterio'}}

    calificaciones.keys().each do |info|
        puts calificaciones[info]
    end
```

![captura](http://i.imgur.com/I4ybaA7.png)

### Ejercicio 4 ###

**Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve.**

```ruby
#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require 'net/http'

    def fecha()
        response = Net::HTTP.get_response(ARGV[0],'/')     
        return response['date'].to_s
    end

    def content()
        response = Net::HTTP.get_response(ARGV[0],'/')     
        return response['content-type'].to_s
    end

    url = ARGV[0]

    puts "URL: " + url
    puts "Sevidor: "+ fecha()
    puts "Contenido: "+ content()
```

![captura](http://i.imgur.com/fEXXvMj.png)

### Ejercicio 5 ###

**Ver si está disponible Vagrant como una gema de Ruby e instalarla.**

Miramos las gemas disponibles con:

```sh
gem search --remote vagrant
```
Y posteriormente, instalamos Vagrant con:

```sh
sudo gem install vagrant
```