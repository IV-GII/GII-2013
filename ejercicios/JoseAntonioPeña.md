#Ejercicios de Jose Antonio Peña 

#Tema 1

###Ejercicio 1
El catálogo que he usado para elegir un servidor es de la tienda pccomponentes
El servidor escogido ha sido este [HP](http://www.pccomponentes.com/hp_proliant_ml310e_g8_xe_e3_1220_8gb_2tb___foundation_2012.html).  

El servidor tiene un precio de 833€ con el IVA incluido, si le quitamos el IVA su precio es de 688,43€. 
Por tanto su IVA es de 144,57€.

**Información sobre las amortizaciones**

En el trimestre fiscal se puede deducir el 100% del IVA, por lo que directamente se podría deducir en este trimestre la cantidad de 144,57€.

En cada año se puede amortizar un máximo del 26% del coste total del producto sin IVA durante 10 años.

**Amortización a 4 años:**

En cada año se podrán amortizar un 25%, suponiendo que el servidor se ha comprado el tercer trimestre, en el primer año podremos amortizar la mitad de ese 25%, es decir, un 12,5%, los siguientes tres años se amortizaría un 25% correspondientemente y el último año otro 12,5%. Lo correspondiente al IVA se amortizaría en el mismo trimestre.

-	Tercer trimestre de 2014, deducción del IVA de 144.57€
-	Año 2014 amortización de 86.05€
-	Años 2015, 2016 y 2017 amortización de 172.11€
-	Año 2018 deducción de 86.05€

**Amortización a 7 años:**

En cada año se podrán amortizar un 14,29%, suponiendo que el servidor se ha comprado el tercer trimestre, en el primer año podremos amortizar la mitad de ese 14,29%, es decir, un 7,14%, los siguientes cinco años se amortizaría un 14,29% correspondientemente y el último año otro 7,14%. Lo correspondiente al IVA se amortizaría en el mismo trimestre.

-	Tercer trimestre de 2014, deducción del IVA de 144.57€
-	Año 2014 amortización de 49.15€
-	Años 2015, 2016, 2017, 2018, 2020 y 2021 amortización de 98.38€
-	Año 2022 deducción de 49.15€

###Ejercicio 2
En este ejercicio voy a comparar los servicios ofrecidos por la empresa acens para el servicio cloud, especificamos las caracteristicas del servicio en [esta pagina](http://www.acens.com/cloud/cloud-servers/). Y lo comparamos con el servidor dedicado [S8](http://www.arsys.es/servidores/dedicados) de la empresa Arsys.

**Características comunes del servidor dedicado y cloud server:**

- CPU: 2 x 4 Core x 1,8 GHz
- 8GB RAM
- Unos 1000GB de disco

**Precios anuales:**
- Servidor dedicado: 3300€ al año.
- Cloud server: 7.084.8€ al año o 0.82€ por hora.

**Comparación según el porcentaje de uso:**

***Uso del 1%:***
El servidor dedicado no permite dividir el % de uso, por lo que se coste en cualquier caso siempre será el mismo.
- Servidor dedicado: 3300€ al año.
- Cloud server: 87.6 horas x 0.82€/h = 71.832€ al año.

***Uso del 10%:***
El servidor dedicado no permite dividir el % de uso, por lo que se coste en cualquier caso siempre será el mismo.
- Servidor dedicado: 3300€ al año.
- Cloud server: 876 horas x 0.82/h = 718.32€ al año.

Como se puede observar en ambos casos nos resultaría más económico la contratación del servicio de Cloud Server.


###Ejercicio 3
En este ejercicio he creado un pequeño programa en python.

![Script python](http://i.imgur.com/ZeKD33l.png)

Ahora descargamos el paquete CDE:
![Instalacion](http://i.imgur.com/TUbQjdn.png)

Ya tenemos instalado el paquete CDE, una vez hecho esto he hecho el portable para poder ejecutarlo en otra instalación de linux.

###Ejercicio 4
Tutorial realizado.
![Tutorial](http://i.imgur.com/FQL5JDe.png)


###Ejercicio 5
Para instalar el sistema de gestión de fuentes tenemos que escribir en la linea de ordenes lo siguiente:
apt-get install -y git

###Ejercicio 6

Clono el proyecto con
git clone https://github.com/JosePV/GII-2014

Hacemos un touch del fichero README.md

Y realizamos el primer commit con:
git commit -m "Primer commit"

Para guardarlo todo realizamos:
git push


###Ejercicio 7
A)
Hacemos un ls en el directorio donde la hemos montado para ver que la instalación ha funcionado:
![cgroup](http://i.imgur.com/acCjsZI.png).

###Ejercicio 8

Instalamos el paquete cgroup-bin porque es mas facil trabajar con el 
![cgroup-bin](http://i.imgur.com/FS4HtTD.png)

Creamos un grupo que contenga los subgrupos que nos pide el ejercicio haciendo sudo cgcreate -a josepv -g memory,cpu,cpuacct:ejercicio7

Este grupo se encarga de controlar la memoria, CPU y de contabilizar el uso de recursos de CPU y da permiso al usuario josepv para que trabaje con el.

Creado el grupo, vamos a crear varios subgrupos: uno encargado de ejecutar el navegador, otro de ejecutar el procesador de textos y otro de ejecutar el cliente de correo electrónico Mozilla Thunderbird.

    sudo cgcreate -g memory,cpu,cpuacct:ejercicio7/navegador
    sudo cgcreate -g memory,cpu,cpuacct:ejercicio7/editor
    sudo cgcreate -g memory,cpu,cpuacct:ejercicio7/correo

Con cgexec asignamos los procesos de cada subgrupo.

    sudo cgexec -g memory,cpu,cpuacct:ejercicio7/navegador firefox
    sudo cgexec -g memory,cpu,cpuacct:ejercicio7/editor gedit
    sudo cgexec -g memory,cpu,cpuacct:ejercicio7/correo thunderbird

Para comparar el uso de recursos visualizamos los resultados en:

    /sys/fs/cgroup/(memory|cpu|cpuacct)/ejercicio7/(navegador|editor|correo)

Resultados para el navegador:

    - cpuacct.usage --> 2943724935
    - cpuacct.stat:
           user 244
           system 38
    - cpuacct.usage_percpu --> 422363850 1046168504 1273224787 205078078 
    - memory.max_usage_in_bytes --> 327741440

Resultado para el editor:

    - cpuacct.usage --> 2345308237
    - cpuacct.stat:
           user 201
           system 21
    - cpuacct.usage_percpu --> 747258934 1008912121 407984020 181153162 
    - memory.max_usage_in_bytes --> 153321472
    
Resultados para el correo:

    - cpuacct.usage --> 0
    - cpuacct.stat:
          user 0
          system 0
    - cpuacct.usage_percpu --> 0 0 0 0
    - memory.max_usage_in_bytes --> 0

B)
 
He localizado una página web que explica muy bien el consúmo eléctrico de un ordenador aproximado que tiene durante un sin desconectarlo de la corriente,

En primer lugar hay que [LeanTricity](http://www.leantricity.es/es/2012/07/11/cuanta-energia-gasta-un-ordenador-aproximaciones/)
Basandome en estos valores de la página paso a realizar el calculo de costes de amortización.

Coste eléctrico por año:

    365 días x (0,437 kWh + 0,1524 kWh) = 215 kWh (Aproximación)
    
    0,20 € * 215 kWh = 43€/año (Anual)

La vida media de un PC esta rondando los 5 años y suponiendo un precio de 1000€.

Amortización:

     Año 2014: 120€ + 43€ = 143€
     Año 2015: 200€ + 43€ = 243€
     Año 2016: 200€ + 43€ = 243€
     Año 2017: 200€ + 43€ = 243€
     Año 2018: 200€ + 43€ = 243€
     Año 2019: 57€ + 43€ =  100€
     
     Precio total: 1215€

  
###Ejercicio 9
####Ejercicio 9.1
Discutir diferentes escenarios de limitación de uso de recursos o de asignación de los mismos a una u otra CPU.

A la hora de limitar los recursos de una máquina lo primero que tenemos que conocer es el uso que se le va a dar a la misma, no podemos por ejemplo, limitar el uso de CPU en una máquina usada para codificación de vídeo que requiere una intensiva carga de CPU.

Por ejemplo es posible limitar el uso de CPU para sistemas dedicados únicamente a ofimática o tareas administrativas con uso de e-mail o similares, estas tareas no requieren una gran carga del sistema por lo que una limitación en la CPU no les afectaría negativamente.

####Ejercicio 9.2
Implementar usando el fichero de configuración de cgcreate una política que dé menos prioridad a los procesos de usuario que a los procesos del sistema (o viceversa).

Hacemos dos grupos, uno con un 40% (409,6) de carga y otro con el resto (614,4)

mount {
   cpu = /sys/fs/cgroup/cpu;
}

group proc-usu {
    cpu {
        cpu.shares = "410";
    }
}

group proc-sist {
    cpu {
        cpu.shares = "614";
    }
}

####Ejercicio 9.3
Usar un programa que muestre en tiempo real la carga del sistema tal como htopy comprobar los efectos de la migración en tiempo real de una tarea pesada de un procesador a otro (si se tiene dos núcleos en el sistema).

Instalamos htop y lo ejecutamos

![Ejecución de Htop](http://i.imgur.com/ezuRA2Q.png)

####Ejercicio 9.4
Configurar un servidor para que el servidor web que se ejecute reciba mayor prioridad de entrada/salida que el resto de los usuarios.

mount {
    blkio = /cgroup/iolimit;
}

group servidor {
    blkio  {
        blkio.weight_device="700"; 
    }
}

group usuarios {
    blkio  {
        blkio.weight_device="300"; 
    }
}


###Ejercicio 10
Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?

Ejecutamos el comando "egrep '^flags.*(vmx|svm)' /proc/cpuinfo" para comprobar si la virtualización a nivel de hardware está activa.

En la ejecución del comando he tenido que quitar el filtro de las extensiones vmx y svm ya que si lo dejaba no aparecía ningún resultado.
En la captura podemos comprobar que existen los flags en nuestro sistema
![Flags del sistema](http://i.imgur.com/oBbwPSd.png)

Para conocer el modelo del procesador lo hacemos en /proc/cpuinfor
![Modelo del procesador](http://i.imgur.com/MZ5zYNG.png)

En la captura podemos ver que aparece la marca, el modelo, número de cores que tenemos disponibles, velocidad de CPU y cantidad de memoria cache.


###Ejercicio 11
Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok.

Vemos en la captura que mi ordanador no dispone de aceleración KVM

![Aceleración KVM](http://i.imgur.com/6lcO7pj.png)
