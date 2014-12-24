## Introducción ligera al lenguaje Ruby. 

[Seguiremos este seminario sobre Ruby](http://jj.github.io/IV/documentos/seminarios/ruby)


##Ejercicio 1
###Instalar Ruby y usar comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.

Comprobamos que tenemos instaladas todas las herramientas y su versión,y en mi caso [actualizo Rubygems](https://rubygems.org/pages/download)

![imagen](http://i.imgur.com/PGEbY7O.png)

Como nos recomienda instalo [JRuby](http://jruby.org/) `rvm install jruby`


##Ejercicio 2
###Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable. 

Primero vemos donde esta el intérprete primero con `which ruby` (/usr/bin/ruby en mi caso) y creamos el programa:


```
#!/usr/bin/ruby
    x=11
    for i in 1..x
        puts "valor: #{i}"
    end
```

Antes de ejecutar le damos permisos (`chmod +x ./ejercicio2.rb`)

![imagen](http://i.imgur.com/Fvpp0Vk.png)


##Ejercicio 3
###¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.

Si, lo haremos en el siguiente programa:

```
#!/usr/bin/ruby
    mixta = { :sonidos => {:vaca => 'muuu', :buho => 'uuu', :caballo => 'iiiii'}, :precios => {"pipas" => 'bajo', "coche" => 'depende', "plan E" => 'exagerado'}, :campo => {"invierno" => 'aceituna', "verano" => 'tallos'}}

    puts mixta.inspect

    mixta.keys().each do |valor|
        puts mixta[valor]
    end
```

Y nos devuelve:

![imagen](http://i.imgur.com/KunACdt.png)



##Ejercicio 4
###Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve

De la cabecera HTTP de respuesta escogeremos los campos de la fecha de envio de petición (date), tipo MIME (content-type) y servidor de la web (server). El programa sería:


```
#!/usr/bin/ruby
# -*- coding: utf-8 -*-

require 'net/http'

    def fecha()
        response = Net::HTTP.get_response(ARGV[0],'/')     
        return response['date'].to_s
    end

    def contenido()
        response = Net::HTTP.get_response(ARGV[0],'/')     
        return response['content-type'].to_s
    end

    def servidor()
        response = Net::HTTP.get_response(ARGV[0],'/')     
        return response['server'].to_s
    end

    url = ARGV[0]
    puts "URL introducida: " << url
    puts "Fecha de envío de petición: " << fecha()
    puts "Contenido del tipo MIME: " << contenido()
    puts "Servidor: " << servidor()
```

Donde podemos ver la salida del programa pasándole de entrada "www.google.es"

![imagen](http://i.imgur.com/abb583W.png)


##Ejercicio 5
###Ver si está disponible Vagrant como una gema de Ruby e instalarla.

Vemos las gemas disponibles con `gem search --remote vagrant` y vemos las de Vagrant:

![imagen](http://i.imgur.com/BBZY9sK.png)

Una vez comprobado podemos instalarla ejecutando `sudo gem install vagrant`



***
***
