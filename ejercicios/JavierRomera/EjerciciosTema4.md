Ejercicio 1.
---
1. [Instalamos lxc](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/1.1.jpg) (es su versión más reciente).
2. [Comprobamos con lxc-checkconfig la compatibilidad.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/1.2.jpg)

Ejercicio 2.
---
1. [Creamos un contenedor nuevo para instalar Ubuntu dentro.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/2.1.jpg)
2. [Lo inicializamos.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/2.2.jpg)
3. [Comprobamos con "ifconfig -a".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/2.3.jpg) (Se puede observar que se ha construido el puente lxcbr0 y la interfaz veth.)

Ejercicio 3.
---
1. [Instalamos Debian con "lxc-create...".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/3.1.jpg)
2. [El password del root será "root".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/3.2.jpg)
3. Para arrancarlo usamos "sudo lxc-start -n debianiv".
4. [Instalamos Fedora.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/3.3.jpg)
 

Ejercicio 4.
---
1)
1. [Instalamos lxcWebpanel.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/4.1.jpg)
2. [Accedemos con localhost:5000.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/4.2.jpg)
3. [Visualizamos nuestras máquinas virtuales.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/4.3.jpg)

2)
1. [Restringimos recursos.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/4.4.jpg)

Ejercicio 6.
---
1)
1. [Agregamos el repositorio.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/6.1.jpg)
2. [Actualizamos e instalamos.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/6.2.jpg)

2)
1. [Instalamos "mongodb" para poder trabajar en local.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/6.3.jpg)
2. [Iniciamos juju.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/6.4.jpg)
3. [Abrimos el archivo "environments.yaml" y cambiamos "default:amazon" por "default:local".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/6.5.jpg)
4. [Instalamos el proveedor local.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/6.6.jpg)
5. [Usamos "juju boostrap" para crear el táper e instalamos "mysql" y "mediawiki".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/6.7.jpg)
6. [Se añade la relación entre "mediawiki" y "mysql".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/6.8.jpg)
7. [Comprobamos con "juju status".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/6.9.jpg)

Ejercicio 7.
---
1)
1. [Destruimos todo.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/7.1.jpg)

2)
1. [Montamos todo como en el ejercicio 6.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/7.2.jpg)
2. [Comprobamos con "juju status".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/7.3.jpg)

3)
1. [Montamos el script.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/7.4.jpg)

Ejercicio 8.
---
1. [Instalamos libvirt.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/8.1.jpg)

Ejercicio 9.
---
1. [Instalamos virtinst.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/9.1.jpg)
2. [Descargamos una imagen. En este caso ubuntu server 14.04.1.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/9.2.jpg)
3. [Creamos el contenedor con el comando "virt-install".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/9.3.jpg)

Ejercicio 10.
---
1. [Instalamos Docker.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/10.1.jpg)

Ejercicio 11. 
---
1)
1. [Inicializamos Docker, pero nos da error.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/11.1.jpg)
2. [Lo solucionamos borrando el fichero "docker.pid".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/11.2.jpg)
3. [Instalamos "tutum/ubuntu".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/11.3.jpg)
4. [Instalamos centOS.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/11.4.jpg)

2)
1. [Instalamos una imagen que contenga Mongodb.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/11.5.jpg)

Ejercicio 12.
---
1. [Instalamos un nuevo centOS.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/12.1.jpg)
2. [Accedemos a él.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/12.2.jpg)
3. [Creamos el usuario "iv".](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/12.3.jpg)
4. [Instalamos nginx.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/12.4.jpg)


Ejercicio 13
---
1. [Con "sudo docker images -notrunc" buscamos la ID correspondiente](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/13.1.jpg) y la aplicamos al comando "sudo docker commit ID_Obtenida".

Ejercicio 14.
---
1. [Nos registramos en Docker.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/14.1.jpg)
2. [Añadimos un nuevo repositorio e indicamos de dónde lo obtendrá.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/14.2.jpg)
3. [Autorizamos.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/14.3.jpg)
4. [Seleccionamos el repositorio.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/14.4.jpg)
5. [Configuramos y creamos.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/14.5.jpg)
6. [Observamos que se ha creado en nuestra cuenta de Docker.](https://github.com/Jarotru/IV/blob/master/Ejercicios/Tema4_Imagenes/14.6.jpg)
