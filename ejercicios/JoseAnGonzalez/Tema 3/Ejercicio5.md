#Ejercicio 5

#### Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.

En los anteriores ejercicios, hemos aprendido como hacer jaulas e instalar un sistema. Partimos de estos conocimientos (y de un debian instalado), y entramos en la jaula:

	sudo chroot /home/joseantonio/jaulas
    
INstalamos nginx:

	apt-get install nginx
    
Después, lanzamos el servicio:

	service nginx start
    
Ya sólo quedaría hacer otras máquinas virtuales para poder hacer que nginx funcione de verdad. Hay que tener en cuenta que no nos sirven otras jaulas: sólo nos servirían máquinas virtuales (o reales), ya que las jaulas no tienen ningún tipo de sistema que permita tener a cada jaula una IP distinta.