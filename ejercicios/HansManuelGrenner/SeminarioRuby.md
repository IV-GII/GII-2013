## Ejercicio 1

**Instalar Ruby y usar 'ruby --version'
para comprobar la versión instalada. A la vez, conviene instalar también irb, rubygems y rdoc.**

Comenzamos instalando Ruby.

```sudo apt-get install ruby ```

![Figura1](Imagenes/ejRuby_1_1.png)
> Figura 1. Versión de Ruby instalada

A continuación instalamos las siguientes herramientas. 

Para la instalación del entorno interactivo por línea de comandos de Ruby conocido como **irb** ejecutamos el siguiente comando.

```sudo apt-get install irb ```
> **irb** suele instalarse por defecto con Ruby

Podemos comprobar también la versión que tenemos instalado mediante ```irb -v ```.

La siguiente herramienta es el gestor de paquetes para Ruby llamado **rubygems**. ( Comando para Ubuntu 14.04 )

```sudo apt-get install rubygems-integration ```

Y la última herramienta es **rdoc**, el generador de documentación de Ruby. Viene instalado por defecto desde la versión 1.8.2 de Ruby.

## Ejercicio 2

**Crear un programa en Ruby que imprima los números desde el 1 hasta otro contenido en una variable.**

```ruby #!/usr/bin/ruby

# Definimos la variable objetivo con el valor máximo que va alcanzar el bucle
objetivo=10

# Creamos el bucle for desde 1 hasta el valor objetivo
for i in 1..objetivo
  # Imprimimos el contenido de la variable i
  puts "Contenido variable i : #{i}"
end ```

![Figura2](Imagenes/ejRuby_2_1.png)
> Figura 2. Resultado ejecución del bucle

## Ejercicio 3

**¿Se pueden crear estructuras de datos mixtas en Ruby? Crear un array de hashes de arrays e imprimirlo.**

```ruby #!/usr/bin/ruby

# Creamos una estructura que contiene diferentes arrays

estructuraMixta = {
  :humano =>{
    :cuerpo => "dinamico",
    :gravedad => 9.8,
    :masa => 80,
    :esMortal => true
  },
  :piedra =>{
    :cuerpo => "dinamico",
    :gravedad => 9.8,
    :masa => 20,
    :esMortal => false
  },
  :plataforma =>{
    :cuerpo => "estatico",
    :gravedad => 0,
    :esMortal => false,
    :rangoMovimiento =>{ :valores =>{ :min => -5 , :max => 5 }}
  }
}

# Devolvemos los datos
estructuraMixta.keys().each() do |contenido|
  puts estructuraMixta[contenido]
end ```

![Figura3](Imagenes/ejRuby_3_1.png)
> Figura 3. Resultado ejecución del array de hashes arrays.

## Ejercicio 4

**Crear una serie de funciones instanciadas con un URL que devuelvan algún tipo de información sobre el mismo: fecha de última modificación, por ejemplo. Pista: esa información está en la cabecera HTTP que devuelve**

## Ejercicio 5

**Ver si está disponible Vagrant como una gema de Ruby e instalarla.**
