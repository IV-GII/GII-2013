<h1> Victor Coronas Lara </h1>

#Clase del 29 de septiembre de 2014

#Ejercicios

* Ejercicio 1: 
 1. Consultar en el catálogo de alguna tienda de informática el precio de un ordenador tipo servidor y calcular su coste de amortización a cuatro y siete años. Consultar este artículo en Infoautónomos sobre el tema.

     Para realizar este ejercicio he usado el siguiente [servidor](http://www.lambda-tek.com/N12000PRO-Thecus-N12000PRO-12-Bay-NAS-Intel-Xeon-E3-1275-3-4GHz-Quad-Core-8GB-DDR3-SDRAM-3-x-1GbE-upgradeable-to-10GbE-SATA-III-and-SAS-6G-~csES/B1611704&origin=gbaseES14.4?gclid=CjwKEAjwk_OhBRD06abu3qSoxlwSJACt7sZ78IJ-fmymrW9xgsNDK9HuX8r032jrGU7uTbTSydYPahoC6SPw_wcB).

    Este servidor tiene un coste de:
    - 3647.38€ precio neto
    - 3039.48€ precio bruto

####Cálculo de la amortización en 4 años:
    Vamos a deducirnos el 25% por año que es lo máximo que podemos.
     - Primer año: 3039.48€ * 25% = 759,87€  
     - Segundo año: 3039.48€ * 25% = 759,87€ 
     - Tercer año: 3039.48€ * 25% = 759,87€  
     - Cuarto año: 3039.48€ * 25% = 759,87€  

####Cálculo de la amortización en 7 años: 
    Vamos a ir deduciendonos cada año un cierto porcentaje, pero los primeros años más ya que es inversión.  
     - Primer año: 3039.48€ * 25% = 759,87€ 
     - Segundo año: 3039.48€ * 25% = 759,87€  
     - Tercer año: 3039.48€ * 15% = 455,922€  
     - Cuarto año: 3039.48€ * 15% = 455,922€  
     - Quinto año: 3039.48€ * 10% = 303,948€  
     - Sexto año: 3039.48€ * 5% = 151,974€  
     - Séptimo año: 3039.48€ * 5% = 151,974€


* Ejercicio 2: 
 1. Usando las tablas de precios de servicios de alojamiento en Internet y de proveedores de servicios en la nube, Comparar el coste durante un año de un ordenador con un procesador estándar (escogerlo de forma que sea el mismo tipo de procesador en los dos vendedores) y con el resto de las características similares (tamaño de disco duro equivalente a transferencia de disco duro) si la infraestructura comprada se usa sólo el 1% o el 10% del tiempo.
 
    Para la comparación voy a utilizar dos de los servicios más conocidos:  [Google Compute Engine](https://cloud.google.com/products/compute-engine/) y [Amazon EC2](http://aws.amazon.com/es/ec2/)

    Características de la máquina de Google n1-standard-1-d:
    * CPU: 1 core
    * Memoria: 3,75GB
    * Disco duro: 420GB
    * Precio por hora: 0,114834658 €/hora
    
    Características de la máquina de Amazon m3.medium:
    * CPU: 1 core
    * Memoria: 3,75GB 
    * Disco duro: 410GB
    * Precio: 0,126714105 €/hora

   ####Cálculo de los precios al 1% de uso:
    Google: 0,114834658 * 87,6 horas = 10,105449904 €.
    Amazon: 0,126714105 * 87,6 horas = 11,15084124 €.  
      
    
   ####Cálculo de los precios al 10% de uso:
    Google: 0,114834658 * 876 horas = 100,595160408 €
    Amazon: 0,126714105 * 876 = 111,00155598 €
      


* Ejercicio 3: 
 1. ¿Qué tipo de virtualización usarías en cada caso? Comentar en el foro
   [Comentario en el foro](https://github.com/JJ/GII-2014/issues/71)

 -Si queremos alojar varios clientes en un servidor, utilizaría la virtualización a nivel de sistema operativo, ya que esta nos permite aislar las cuentas de cada usuario por separado, nos permite a la vez que el anfitrión y el cliente usen el mismo sistema operativo pero aislandose entre si y por último el administrados de sistema puede gestionar todo.
  
 -Para la creación de un sistema eficiente de web + middleware + base de datos, elegiría una virtualización plena, ya que nos permite virtualizar todo el sistema por completo, para la ejecución tanto de sistemas operativos, así como cualquier tipo de aplicación.
  
 -Para un sistema de prueba de software e integracion continua, yo usaria la virtualizacion de entornos de desarrollo para probar en las diferentes versiones de forma más rápida, ya que consigue reproducir cada entorno de producción de la forma parecída posible.

 2. Crear un programa simple en cualquier lenguaje interpretado para Linux, empaquetarlo con [CDE](http://www.pgbovine.net/cde.html) y probarlo en diferentes distribuciones.

  -He usado un programa de prueba muy sencillo, usa en la asignatura DAI en el lenguaje PYTHON.
  [Programa de prueba](https://www.dropbox.com/s/xkl4fdvnuw4lpuy/ejer1.py?dl=0)

* Ejercicio 4:
 1. Hacer el tutorial de línea de órdenes de docker para comprender cómo funciona.

 2. Avanzado Instalarlo y crear una aplicación contenedorizada

#Clase del 30 de septiembre de 2014

#Ejercicios

* Ejercicio 5
 Instala el sistema de gestión de fuentes git

* Ejercicio 6
 1. Crear un proyecto y descargárselo con git. Al crearlo se marca la opción de incluir el fichero README.
 
 2.Modificar el readme y subir el fichero modificado.

* Ejercicio 7
 1. Crear diferentes grupos de control sobre un sistema operativo Linux. Ejecutar en uno de ellos el navegador, en otro un procesador de textos y en uno último cualquier otro proceso. Comparar el uso de recursos de unos y otros durante un tiempo determinado.

 2. Calcular el coste real de uso de recursos de un ordenador teniendo en cuenta sus costes de amortización. Añadir los costes eléctricos correspondientes.
 
* Ejercicio 8
 1. Discutir diferentes escenarios de limitación de uso de recursos o de asignación de los mismos a una u otra CPU.
 2. Implementar usando el fichero de configuración de cgcreate una política que dé menos prioridad a los procesos de usuario que a los procesos del sistema (o viceversa).
 3. Usar un programa que muestre en tiempo real la carga del sistema tal como htopy comprobar los efectos de la migración en tiempo real de una tarea pesada de un procesador a otro (si se tiene dos núcleos en el sistema).
 4.Configurar un servidor para que el servidor web que se ejecute reciba mayor prioridad de entrada/salida que el resto de los usuarios.

#Clase del 6 de octubre de 2014

#Ejercicios

* Ejercicio 9
 1. Comprobar si el procesador o procesadores instalados tienen estos flags. ¿Qué modelo de procesador es? ¿Qué aparece como salida de esa orden?

* Ejercicio 10
 1. Comprobar si el núcleo instalado en tu ordenador contiene este módulo del kernel usando la orden kvm-ok.

* Ejercicio 11
 1. Comentar diferentes soluciones de Software as a Service de uso habitual
