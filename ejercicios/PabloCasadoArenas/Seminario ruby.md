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
