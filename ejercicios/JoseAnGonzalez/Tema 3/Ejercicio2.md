#Ejercicio 2

#### Mostrar los puentes configurados en el sistema operativo.

Primero debemos instalar la utilidad brctl, mediante la orden:

	sudo apt-get install bridge-utils
    
A continuación, para saber los puentes configurados, introducimos la orden:

	brctl show
    
#### Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.

Primero creamos la interfaz:
	
    sudo brctl addbr inferfazVirtual
    
Después, le asignamos a esta interfaz la tarjeta wifi (wlan0):

	sudo brctl addif interfazVirtual wlan0
    
Una vez configurado todo, tenemos que activar la interfaz con la opción up:

	sudo ifconfig interfazVirtual up
    
 