Ejercicio 1.
---
Se monta el ISO. Lo he creado en el escritorio de Ubuntu.

Ejercicio 2.
---
[Instalo el paquete Bridge-Utils.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/2.1.jpg)
[Hago un brctl show para ver los puentes existentes.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/2.2.jpg)
[Creo el puente como dice en el ejemplo y lo  asigno a eth0.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/2.3.jpg)

Ejercicio 3.
---
1)
[Instalamos debootstrap.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.1.jpg)
[Usamos lucid.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.2.jpg) (versión para Ubuntu 10.4)
[Comprobamos que todo haya sido instalado correctamente.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.3.jpg)

2)
[Instalamos rinse.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.4.jpg)
[Instalamos una distribucción de centos disponible.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.5.jpg)

Ejercicio 4.
---
[Accedemos al sistema, listamos los archivos y ejecutamos "top" para comprobar que falla.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.1.jpg)
[Instalamos lo que se requiere siguiendo el guión.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.2.jpg)
[Montamos el filesystem virtual /proc desde fuera de la jaula.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.3.jpg)
[Creamos un programa en Python dentro de la jaula.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.4.jpg)
[Comprobamos que funciona.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.5.jpg)
[Ejecutamos "top".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.6.jpg)

Ejercicio 5.
---
[Dentro de la jaula ejecutamos el comando y observamos que hay un error.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/5.1.jpg)
[Copiamos el sources.list.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/5.2.jpg)
[Instalamos nginx dentro de la jaula.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/5.3.jpg)
[Iniciamos nginx.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/5.4.jpg)

Ejercicio 6.
---
[Descargamos jailkit.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.1.jpg)
[Descompromimos el fichero descargado.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.2.jpg)
[Lo instalamos.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.3.jpg)

[Creamos el directorio dorada y le damos permisos root](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.5.jpg)
[Ejecutamos "jk_init -v -j /seguro/jaulas/dorada jk_lsh basicshell netutils editors".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.6.jpg)
[Creamos el usuario "user_iv".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.7.jpg)
[Incluimos en la jaula al usuario creado.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.8.jpg)
[Habrá que editar la configuración del usuario y cambiar jk_lsh por /bin/bash.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.9.jpg)
[Comprobamos que funciona.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.10.jpg)
