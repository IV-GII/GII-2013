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






