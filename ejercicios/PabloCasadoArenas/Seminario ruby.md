### Ejercicio 1

Instalamos ruby con 

` sudo apt-get install ruby-full `

![Imgur](http://i.imgur.com/tSzmccY.png)

## Ejercicio 2

```ruby
contador = 9
for i in 0..variable
    puts "#{i}"
end

```
Y lo ejecutamos llamando al interprete de ruby : ruby ruby.rb

## Ejercicio 3

Del propio texto " Como ocurre en otros lenguajes dinámicos como el Ruby, no hay distinción de tipos "
Por lo tanto, si, se puede.

```ruby
prueba= { :uno => '1', 
  :dos => '2', :tres => '3'}

prueba.keys().each do |indice|
  puts prueba[indice]
 end
```
### Ejercicio 4

![Imgur](http://i.imgur.com/TTTvlTs.png)

![Imgur](http://i.imgur.com/De94s9I.png)

### Ejercicio 5

Al tratar de instalarlo con sudo gem install vagrant, nos dice que esta no es la manera de instalar vagrant y que ahora hacen instaladores para SO. Te redireccionan a www.vagrantup.com.
Tambien para saber porque dejan de usar Vagrant, te dan esta web:

http://mitchellh.com/abandoning-rubygems
