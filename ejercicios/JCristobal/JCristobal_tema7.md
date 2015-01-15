#Ejercicios de JCristobal (José Cristóbal López Zafra)

# Tema 7

[Enlace al tema](http://jj.github.io/IV/documentos/temas/Gestion_de_configuraciones)


##Ejercicio 1
###Instalar chef en la máquina virtual que vayamos a usar

Nos conectamos a ello con `ssh jcristobal@jcristobal.cloudapp.net`.

Y dentro lo instalamos como nos indican en el guión, con `sudo curl -L https://www.opscode.com/chef/install.sh | sudo bash`


![imagen](http://i.imgur.com/ehjjAiH.png) 


##Ejercicio 2
###Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual. 

Para ello muestro los contenidos de solo.rb y node.json

en el archivo solo.rb:

```
file_cache_path "/home/jcristobal/chef"
cookbook_path "/home/jcristobal/chef/cookbooks"
json_attribs "/home/jcristobal/chef/node.json"
```

en node.json:

```
{
"iv": {
"name" : "IV"
},
"nginx": {
"user" : "www-data",
"port"	: "80"
},
"run_list": [ "recipe[emacs]", "recipe[iv]", "recipe[nginx]" ]
}
```


Dentro de un directorio (chef en mi caso) crearemos "coockbooks" y dentro de él una carpeta con cada receta (emacs, iv y nginx): cada una tendrá su metadata.rb y recipes/default.rb

Tendrán estructuras similares, pongo los de la receta de nginx:

dentro de metadata.rb:

```
maintainer "JCristobal"
maintainer_email "tobas92@gmail.com"
description "Instala nginx"
version "1.0.0"
name "nombrenginx"
recipe "nginx", "Receta para instalar nginx"
```

y dentro de default.rb

```
package 'nginx'
```

En cada receta tendremos que cambiar "recipe" de metadata.rb y el paquete de default.rb



Muestro la esctructura que se queda:

![imagen](http://i.imgur.com/tFveKn6.png) 

y para acabar `sudo chef-solo -c solo.rb`


