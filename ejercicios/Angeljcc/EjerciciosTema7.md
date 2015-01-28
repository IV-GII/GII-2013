#Ejercicios Tema 7: Gestión de configuraciones  
---------------------------------------------



####Ejercicio 1
######_Instalar chef en la máquina virtual que vayamos a usar_

Procedemos a instalar Chef, en este caso la instalaré en una maquina virtual creada en Azure.


Tras intentar varias veces instalar sin éxito la version de chef que hay en los apuntes, procedo a instalar rubi de forma manual desde la pagina web de ruby, y chef desde la web tambien:
``` bash
curl -L https://www.opscode.com/chef/install.sh | sudo bash

```


- - -

#### Ejercicio 2
######_Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual._
Este es el árbol como ha quedado estructurado para la cnfiguracion de las recetas con chef.

* chef
	+ cookbooks
		+ emacs
			+ metadata.rb
			+ recipes
 				+ default.rb
		+ fichero
            + metadata.rb
            + recipes
	            + default.rb
		+ nginx
            + metadata.rb
            + recipes
	            + default.rb
    + node.json
    + solo.rb  

``` chef 
default.rb
directory '/home/azureuser/Documentos/fichero'
file "/home/azureuser/Documentos/LEEME.md" do
	owner "azureuser"
	group "azureuser"
	mode 00777
	action :create
	content "Directorio para documentos diversos"
end

```

Ejecutamos el comando siguiente:

` sudo chef-solo -c chef/solo.rb`

- - -

#### Ejercicio 3
###### _Escribir en YAML la siguiente estructura de datos en JSON_
######_{ uno: "dos", tres: [ 4, 5, "Seis", { siete: 8, nueve: [ 10, 11 ] } ] }_

``` json
---
- uno: "dos"
  tres:
    - 4
    - 5
    - "Seis"
    -
      - siete: 8
        nueve:
          - 10
          - 11
```

- - -

#### Ejercicio 4
###### _Desplegar los fuentes de la aplicación de DAI o cualquier otra aplicación que se encuentre en un servidor git público en la máquina virtual Azure (o una máquina virtual local) usando ansible._


- - -

#### Ejercicio 5
###### _Desplegar la aplicación de DAI con todos los módulos necesarios usando un playbook de Ansible._

######_¿Ansible o Chef? ¿O cualquier otro que no hemos usado aquí?._

- - -

#### Ejercicio 6
###### _Instalar una máquina virtual Debian usando Vagrant y conectar con ella._


- - -

#### Ejercicio 7
######_Crear un script para provisionar `nginx` o cualquier otro servidor web que pueda ser útil para alguna otra práctica_


- - -

#### Ejercicio 8
###### _Configurar tu máquina virtual usando vagrant con el provisionador ansible_

