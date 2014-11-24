# Hito 3
## Ejercicio 1
Empezamos creando el nuevo espacio de nombres

```
sudo unshare -u /bin/bash
```
Posteriormente le damos nombre al hostname.

```
hostname iv-mount
```

![1](images/Captura de pantalla 2014-11-23 a las 1.09.25.png)

Ya tenemos nuestro espacio de nombres, ahora podemos proceder a montar la imagen. Nosotros vamos a montar una que teníamos de Lubuntu.

Basta con usar el comando:

```
mount -o loop mini.iso /mnt/lubuntu-iv
```
Y nos montará nuestra imagen en el directorio lubuntu-iv

![](images/Captura de pantalla 2014-11-23 a las 1.09.56.png)

Podemos comprobarlo listando /mnt

![](images/Captura de pantalla 2014-11-23 a las 1.10.17.png)

## Ejercicio 2

1. Mostrar los puentes configurados en el sistema operativo.
Para mostrar los puentes, basta con ejecutar la orden

```
brctl show
```
Y como podemos ver no se muestra ninguno en este momento, ya que no tenemos ningun software de virtualización en este momento.
![](images/Captura de pantalla 2014-11-24 a las 10.02.21.png)

2. Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.
