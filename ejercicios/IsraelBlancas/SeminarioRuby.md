Ejercicios Ruby Israel Blancas Álvarez
============================

#Seminario de Ruby#

##Ejercicio 1##

#####Instalar Ruby y usar ``ruby --version`` para comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.#####

Yo ya tenía Ruby instalado:

``ruby 1.9.3p484 (2013-11-22 revision 43786) [x86_64-linux]``


***

##Ejercicio 2##

#####Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.#####

```ruby
#!/usr/bin/ruby
for i in 1..5
  puts "#{i}"
end
```


***

##Ejercicio 3##

#####¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.#####

Sí, no hay problema en mezclar distintos tipos de datos en una misma estructura.


```ruby
#!/usr/bin/ruby
arrayDeArray = {
  :c =>{
    :tipado => "estatico",
    :velocidad => 10,
    :interpretado => false
    },
    :java =>{
      :tipado => "estatico",
      :velocidad =>5,
      :interpretado => true
    }
  }

  arrayDeArray.keys().each() do |leng|
  puts arrayDeArray[leng]
  end
```


***

##Ejercicio 4##

#####Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve#####

```ruby
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


***

##Ejercicio 5##

#####Ver si está disponible Vagrant como una gema de Ruby e instalarla.#####

Primero vemos está con ``gem search --remote vagrant`` y, en caso afirmativo, instalamos con ``gem install vagrant``.
