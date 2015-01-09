##Seminario de Ruby

###Ejercicio 1:
####Instalar Ruby y usar ruby --version para comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.

Para instalarlo hacemos:

``sudo apt-get install ruby-full``

Comprobamos la version que tenemos instalada:

<img src=http://i61.tinypic.com/2rnho2c.png></img>


###Ejercicio 2:
####Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.

```bash
#!/usr/bin/ruby

var = 25;
for i in 1..var
  puts "#{i}"
end
```

###Ejercicio 3:
####¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.

Si, ruby al ser un lenguaje sin tipos acepta cualquiera y cualquier anidamiento.

```bash
#!/usr/bin/ruby
miArray = {
  :hash1 =>{	
  :nombre => "Pablo",
  :apellido1 => "Perez", 
  :apellido2 => "Ruiz"
  },
  :hash2 =>{
  :edad => "27", 
  :genero => "masculino"
  }
}
puts miArray
```
<img src=http://i62.tinypic.com/24wy3w9.png></img>

###Ejercicio 4:
####Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve

```bash
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
puts "Servidor: "+ getServidor(url)
puts "Contenido: "+ getContent(url)
```

###Ejercicio 5:
####Ver si está disponible Vagrant como una gema de Ruby e instalarla.

Para ver su disponibilidad hacemos:

``gem search --remote vagrant``

<img src=http://i59.tinypic.com/35jcps0.png></img>

Y ahora hacemos:

``sudo gem install vagrant``
