##Tema 7:

###Ejercicio 1:

Instalar chef en la máquina virtual que vayamos a usar:

Simplemente he utilizado la segunda forma mas rapida

````
curl -L https://www.opscode.com/chef/install.sh | sudo bash
````

Y listo en la maquina virtual:

<img src="http://i57.tinypic.com/2woavra.jpg"/>

###Ejercicio 2:

Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual


###Ejercicio 3:

Escribir en YAML la siguiente estructura de datos en JSON

````
{ uno: "dos",
  tres: [ 4, 5, "Seis", { siete: 8, nueve: [ 10, 11 ] } ] }
````

````
- uno: "dos"
  tres:
    - 4
    - 5
    - "Seis"
    -
      - siete: 8
        nueve:
          - 10
          - 11
````

Y lo compruebo en un conversor: http://codebeautify.org/yaml-to-json-xml-csv

<img src="http://i62.tinypic.com/2rfwthy.jpg"/>



Trabajando...