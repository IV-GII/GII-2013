# Seminario: Ruby

## Ejercicio 1: Instalar Ruby y usar comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.
La heramienta más popular para instalar Ruby es RVM (“Ruby Version Manager”).
Desde la [(]página oficial de Ruby](https://www.ruby-lang.org/es/downloads/) nos dan las instrucciones a seguir para instalarlo:
```
\curl -L https://get.rvm.io | bash -s stable --ruby
```
Esta herramienta nos permite instalar y controlar las distintas versiones de Ruby.

Con el anterior comando tenemos Ruby y RVM en su ultima versión estable.
![](images/Captura de pantalla 2015-01-15 a las 18.11.23.png)
Para comprobar que se ha instalado correctamente ejecutamos el comando:
```
MacBook-Pro-de-Ivan:ivanortegaalba ivanortegaalba$ ruby --version
ruby 2.0.0p481 (2014-05-08 revision 45883) [universal.x86_64-darwin14]
```
Donde podemos ver que tenemos ruby 2.0

Rdoc y el irb ya vienen instalados por defecto.
Para instalar rubygems descargamos la gema desde la [página oficial](https://rubygems.org/pages/download) e instalamos:

```
MacBook-Pro-de-Ivan:ivanortegaalba ivanortegaalba$ sudo gem install /Users/ivanortegaalba/Downloads/rubygems-update-2.4.5.gem
Successfully installed rubygems-update-2.4.5
Parsing documentation for rubygems-update-2.4.5
Installing ri documentation for rubygems-update-2.4.5
1 gem installed
```
## Ejercicio 2: Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.

[Script](scriptRuby/ejercicio2.rb)

```
#!/usr/bin/ruby

$num = 50

for $i in 0..$num
  puts $i.to_s
end
```
## Ejercicio 3: ¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.

[Script](scriptRuby/ejercicio3.rb)

```
#!/usr/bin/ruby

array_hashes = {
  "clave1" => [1,2,3,4],
  "clave2" => [5,6,7,8],
  "clave3" => [9]
}

puts array_hashes.to_s

array_hashes.keys().each do |i|
puts array_hashes[i]
end
```


## Ejercicio 4: Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve

La estructura de header corresponde a :
```
    {
      :server => "nginx/1.4.7",
      :date => "Sat, 08 Nov 2014 19:44:58 GMT",
      :content_type => "application/json",
      :content_length => "303",
      :connection => "keep-alive",
      :content_disposition => "inline",
      :access_control_allow_origin => "*",
      :access_control_max_age => "600",
      :access_control_allow_methods => "GET, POST, PUT, DELETE, OPTIONS",
      :access_control_allow_headers => "Content-Type, x-requested-with"
    }
```
[Script](scriptRuby/ejercicio4.rb)

```
#!/usr/bin/ruby
# -*- coding: utf-8 -*-

  require 'net/http'

  def metodosPermitidos()
  response = Net::HTTP.get_response(ARGV[0],'/')
  return response['access_control_allow_methods'].to_s
  end

  def fecha()
  response = Net::HTTP.get_response(ARGV[0],'/')
  return response['date'].to_s
  end

  def servidor()
  response = Net::HTTP.get_response(ARGV[0],'/')
  return response['server'].to_s
  end

  def length()
  response = Net::HTTP.get_response(ARGV[0],'/').to_s
  return response['content_length'].to_s
  end

  def tipoConexion()
  response = Net::HTTP.get_response(ARGV[0],'/').to_s
  return response['connection'].to_s
  end

  puts "Metodos Permitidos:" + metodosPermitidos()
  puts "Fecha :" + fecha()
  puts "Servidor:" + servidor()
  puts "Longitud :" + length()
  puts "Tipo de conexión :" + tipoConexion()

```
