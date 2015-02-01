
Tema 7
======

Ejercicio 1
-----------

**Instalar chef en la máquina virtual que vayamos a usar**


Ejercicio 2
-----------

**Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual.**


Ejercicio 3
-----------

**Escribir en YAML la siguiente estructura de datos en JSON:**

```json
{ uno: "dos",
  tres: [ 4, 5, "Seis", { siete: 8, nueve: [ 10, 11 ] } ] }
```

```yaml
- uno: 'dos'
  tres:
  - 4
  - 5
  - 'Seis'
  -
    - siete: 8
      nueve: [10, 11]
```


Ejercicio 4
-----------

**Desplegar los fuentes de la aplicación de DAI o cualquier otra aplicación que se encuentre en un servidor git público en la máquina virtual Azure (o una máquina virtual local) usando ansible.**


Ejercicio 5
-----------

**Desplegar la aplicación de DAI con todos los módulos necesarios usando un playbook de Ansible.**


Ejercicio 6
-----------

**Instalar una máquina virtual Debian usando Vagrant y conectar con ella.**

Podemos bajarnos cualquiera de las imágenes Debian que se listan en [Vagrant Boxes](http://www.vagrantbox.es/) como por ejemplo:

```shell
vagrant box add https://dl.dropboxusercontent.com/s/xymcvez85i29lym/vagrant-debian-wheezy64.box --name debian
```

![](https://raw.githubusercontent.com/ernestoalejo/ivimages/master/img2.png)

Luego solo tenemos que iniciar la máquina con:

```ssh
vagrant up
vagrant ssh
```

Y podemos consultar el nombre del sistema operativo por ejemplo:

```cat /etc/os-release```

![](https://raw.githubusercontent.com/ernestoalejo/ivimages/master/img3.png)


Ejercicio 7
-----------

**Crear un script para provisionar `nginx` o cualquier otro servidor web que pueda ser útil para alguna otra práctica**


Ejercicio 8
-----------

**Configurar tu máquina virtual usando vagrant con el provisionador ansible**

