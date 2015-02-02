
Una introducción ligera al lenguaje Ruby
====================================================================

Ejercicio 1
-----------

**Instalar Ruby y usar**

**ruby --version**
**para comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.**

![1_1.png](https://dl.dropboxusercontent.com/u/22433100/Iv/ruby/1_1.png)


Ejercicio 2
-----------

**Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.**

```ruby
#!/usr/bin/ruby

final=10
for i in 1..final
  puts "#{i}"
end
```


Ejercicio 3
-----------

**¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.**
Si se pueden crear estructuras de datos mixtas.
```ruby
#!/usr/bin/ruby

estructura = {
    :prueba0=>{
        :valor1 => "Esto es ",
        :numero => 1,
        :valor2 => " prueba ",
        :condicion => true
    },
    :prueba1=>{
        :valor1 => "Esto no es ",
        :numero => 1,
        :valor2 => " prueba ",
        :condicion => false
    }
}

estructura.keys().each() do |valor|
  puts estructura[valor]
end
```
![3_1.png](https://dl.dropboxusercontent.com/u/22433100/Iv/ruby/3_1.png)
