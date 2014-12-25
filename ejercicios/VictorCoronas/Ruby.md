##EJERCICIOS RUBY

* [+]Ejercicio 1
 - A) Instalar Ruby y usar "ruby --version" para comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.

Lo primero que vamos a hacer es instalar "ruby" con: 

    apt-get install ruby

[Ver captura de pantalla]()

Una vez instalado vamos a usar "ruby --version" para comprobar la versión que tenemos instalada, [ver captura]().

Ahora también vamos a instalar irb, rubygems y rdoc, para ello usamos el siguiente comando:

    apt-get install irb rubygems rdoc

[Ver captura de pantalla]()

* [+]Ejercicio 2
 - A) Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.

Lo primero que debemos de hacer es escribir nuestro programa en ruby. 
```
  #!/usr/bin/ruby
    for i in 1..20
      puts "Numero = #{i}"
    end
```
Una vez lo tengamos preparador el programa, tenemos que darle permisos de ejecución con:

    chmod +x nombre_programa.rb

Cuando ya hayamos hecho estos pasos anteriores, solo queda ejecutar el programa con:

    ./nombre_programa.rb

[Ver captura de pantala]()

* [+]Ejercicio 3
 - A) ¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.

* [+]Ejercicio 4
 - A) Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve.

* [+]Ejercicio 3
 - A) Ver si está disponible Vagrant como una gema de Ruby e instalarla.
