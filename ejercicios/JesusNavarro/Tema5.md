# Virtualización del almacenamiento. 

## Tema 5.

**Ejercicio 1.** Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.

Instalación de lxc: sudo su apt-get install lxc

Comprobar si nuestro ordenado es compatible: lxc-checkconfig

<a href="http://es.tinypic.com?ref=25po2s3" target="_blank"><img src="http://i58.tinypic.com/25po2s3.png" border="0" alt="Image and video hosting by TinyPic"></a>

**Ejercicio 2.** comprobar qué interfaces puente se han creado y explicarlos.

Vemos que se ha creado un nuevo puente con el comando: ```sh brclt show ```
