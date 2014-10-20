
# Sesión 23-sept-2014

## Ejercicio 1

http://www.amazon.com/HP-Proliant-2x2-5GHz-Processors-2x146GB/dp/B0096CMENO/ref=sr_1_6?ie=UTF8&qid=1411978783&sr=8-6&keywords=server

Coste del servidor 195 $

Se amortiza el 25 % los años siguientes.
* 2015: 48,75 $
* 2016: 48,75 $
* 2017: 48,75 $
* 2018: 48,75 $
* 2019: 0 $
* 2020: 0 $
* 2021: 0 $


## Ejercicio 2

Usando la web de 
http://azure.microsoft.com/es-es/pricing/calculator/
he configurado esta opcion:
D1 series 1
1 core 3,5 GB de RAM, 10 GB de SSD - 1 instancia - 72,03 €
1 GB de base de datos 7,44 €
500 GB de ancho de banda 44,24 €
Total:
123,71 € / mes
€0,097/hr

Servidor VPS Classic 1
https://www.ovh.es/vps/vps-classic.xml

1 vCore
1 GB de RAM
10 GB RAID 1
100 MBPS
Garantizaos 100000 GB/mes

2,41 € /mes

Comparacion de coste durante 12 meses con un 1 % de uso.
Microsoft Azure: 123,711 € x 12 x 0,01 = 14,84 €
VPS Classic : 2,41 € x 12 = 28,92 €

Comparacion de coste durante 12 meses con un 10 % de uso.
Microsoft Azure: 123,711 € x 12 x 0,10 = 148,45 €
VPS Classic : 2,41 € x 12 = 28,92 €

## Ejercicio 3


```
x=1
if x==1:
	print "x es 1"
else:
	print "x no es 1"
```

Para empaquetarlo con cde:
cde python ejemplo.py

Esto me crea un paquete CDE portable.
Para ejecutarlo
cde-exec python ejemplo.py

## Ejercicio 4

Hecho el tutorial de docker.

## Ejercicio 5

Como root, apt-get install git

## Ejercicio 6

Creado proyecto y descargado con git clone https://github.com/ramako/IV.git
Modificado con vi README.md.
Lo añadimos para hacer commit y luego hacemos el push.

git add README.md

git commit

git push

