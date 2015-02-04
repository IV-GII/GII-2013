## Ejercicio 1

Instalar chef en la máquina virtual que vayamos a usar

Usamos el gestor de gemas de Ruby para importar Chef:
```
gem install chef
```
## Ejercicio 3

#### Escribir en YAML la siguiente estructura de datos en JSON:
```
{ uno: "dos",
  tres: [ 4, 5, "Seis", { siete: 8, nueve: [ 10, 11 ] } ] }
- uno: 'dos'
  tres:
  - 4
  - 5
  - 'Seis'
  -
    - siete: 8
      nueve: [10, 11]
```
