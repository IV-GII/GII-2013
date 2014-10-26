<h2>Prácticas sesión 1</h2>

<h4>Ejercicio 1</h4>

El equipo que he elegido para calcular su amortización es el siguiente, y su página web se puede consultar pinchando <a href=http://www.dynos.es/servidor-hp-proliant-ml350e-g8-xeon-e5-2403-1.8-ghz-2gb-500gb-disco-duro-hdd-3.5-matrox-g200-887111422361__470065-695.html:>aquí</a>

SERVIDOR HP PROLIANT ML350E G8 XEON E5-2403 1.8 GHz 2GB 500GB DISCO DURO HDD 3.5" MATROX G200 de HP
Su precio es 964.00 €

Primero habrá que calcular el precio de la máquina sin el iva:

964 / 1.21 = 796.69 €

Ahora con ese precio calculo las amortizaciones.

<strong>Para cuatro años</strong>

Cada año le aplico el 25%, por lo tanto cada año se amortiza 199.17 €

<strong>Para siete años</strong>

Año 1 - 20% - 159.33<br>
Año 2 - 20% - 159.33<br>
Año 3 - 20% - 159.33<br>
Año 4 - 10% - 47.80<br>
Año 5 - 10% - 47.80<br>
Año 6 - 10% - 47.80<br>
Año 7 - 10% - 47.80<br><br>


<h4>Ejercicio 2</h4>

En este ejercicio, comparo los precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube.

Para el servicio de cloud he elegido el Servidor cloud t2.medium de [Amazon EC2](http://aws.amazon.com/es/ec2/pricing/). Su precio es de 0,041€/hora.

Para el servicio de alojamiento web he elegido la empresa [arsys](http://www.arsys.es/hosting?gclid=CIaA-tz5rsECFQgXwwodo30AOw). El precio mas caro de todos sus presuspuestos, es el de 12€/mes.


<strong>1% del tiempo de uso:</strong><br>
Para el servicio de Amazon EC2, sería (0,041€ * 24h * 30 días * 12 meses) * 1% = 3,54€<br>
Para el servicio de arsys, siempre se pagará lo mismo puesto que el pago se realiza mensualmente: 12€/mes * 12 meses = 144€/año.<br>


<strong>10% del tiempo de uso:</strong><br>
Para el servicio de Amazon EC2, seria (0,041€ * 24h * 30 días * 12 meses) * 10% = 35,42€ <br>
Para el servicio de arsys, siempre se pagará lo mismo puesto que el pago se realiza mensualmente: 12€/mes * 12 meses = 144€/año.<br><br>


<h4>Ejercicio 3</h4>

Parte 1: [Mi comentario en el foro](https://github.com/JJ/GII-2014/issues/71#issuecomment-59239961)


<h4>Ejercicio 4</h4>

En la siguiente captura, muestro el final del tutorial despues de haberlo completado:

![1](http://fotos.subefotos.com/0029a057e1f60509746b245257751ff9o.png)


<h4>Ejercicio 5</h4>

En la siguiente foto muestro como ya tengo instalado git, y en su versión mas reciente.

![2](http://fotos.subefotos.com/af847187f58a79b87f61633d42991fcao.png)


<h4>Ejercicio 10</h4>

Para comprobarlo ejecuto el siguiente comando:
egrep '^flags.*(vmx|svm)' /proc/cpuinfo, cuya salida se muestra en la siguiente captura:

![3](http://fotos.subefotos.com/8b68f45c82ade1dc0057fb70d3a6a679o.png)

Para consultar el modelo del procesador accedemos a la información de /proc/cpuinfo:

![4](http://fotos.subefotos.com/00c4d661a26fe4de3e89147946e6e941o.png)


<h4>Ejercicio 11</h4>

Previamente instalo cpu-checker, y una vez instalado, con el comando kvm-ok compruebo que el núcleo KVM está en mi máquina. En la siguiente captura se puede observar que efectivamente está instalado:

![5](http://fotos.subefotos.com/4998074add857be744e96e033c769477o.png)

