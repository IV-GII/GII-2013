Ejercicio 1.
---
Se monta el ISO. Lo he creado en el escritorio de Ubuntu.

Ejercicio 2.
---
1. [Instalo el paquete Bridge-Utils.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/2.1.jpg)
2. [Hago un brctl show para ver los puentes existentes.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/2.2.jpg)
3. [Creo el puente como dice en el ejemplo y lo  asigno a eth0.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/2.3.jpg)

Ejercicio 3.
---
1)

1. [Instalamos debootstrap.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.1.jpg)
2. [Usamos lucid.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.2.jpg) (versión para Ubuntu 10.4)
3. [Comprobamos que todo haya sido instalado correctamente.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.3.jpg)

2)

1. [Instalamos rinse.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.4.jpg)
2. [Instalamos una distribucción de centos disponible.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/3.5.jpg)

Ejercicio 4.
---
1. [Accedemos al sistema, listamos los archivos y ejecutamos "top" para comprobar que falla.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.1.jpg)
2. [Instalamos lo que se requiere siguiendo el guión.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.2.jpg)
3. [Montamos el filesystem virtual /proc desde fuera de la jaula.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.3.jpg)
4. [Creamos un programa en Python dentro de la jaula.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.4.jpg)
5. [Comprobamos que funciona.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.5.jpg)
6. [Ejecutamos "top".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/4.6.jpg)

Ejercicio 5.
---
1. [Dentro de la jaula ejecutamos el comando y observamos que hay un error.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/5.1.jpg)
2. [Copiamos el sources.list.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/5.2.jpg)
3. [Instalamos nginx dentro de la jaula.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/5.3.jpg)
4. [Iniciamos nginx.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/5.4.jpg)

Ejercicio 6.
---
1. [Descargamos jailkit.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.1.jpg)
2. [Descompromimos el fichero descargado.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.2.jpg)
3. [Compilamos jailkit y cremos el archivo deb.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.3.jpg)
4. [Lo instalamos.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.4.jpg)
5. [Creamos el directorio dorada y le damos permisos root](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.5.jpg)
6. [Ejecutamos "jk_init -v -j /seguro/jaulas/dorada jk_lsh basicshell netutils editors".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.6.jpg)
7. [Creamos el usuario "user_iv".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.7.jpg)
8. [Incluimos en la jaula al usuario creado.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.8.jpg)
9. [Habrá que editar la configuración del usuario y cambiar jk_lsh por /bin/bash.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.9.jpg)
10. [Comprobamos que funciona.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema3_Imagenes/6.10.jpg)
