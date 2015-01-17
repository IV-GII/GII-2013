Lista de ejercicios Israel Blancas Álvarez
============================

#TEMA 7: Gestión de infraestructuras virtuales#

##Sesión 12-01-2015##

##Ejercicio 1##

#####Instalar chef en la máquina virtual que vayamos a usar#####

Cuando he ido a instalar de la primera forma que se indica en los apuntes, me he encontrado que se solicita tener, al menos la versión 2 de Ruby. Tras comprobar que los repositorios (al menos los que yo tengo) no ofrecen esa versión, he tratado de instalar con el segundo método (pensando que tal vez actualizaría mi versión de Ruby).

Tras comprobar que no, he ejecutado:

```bash
sudo apt-get -y update
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
cd /tmp
wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p481.tar.gz
tar -xvzf ruby-2.0.0-p481.tar.gz
cd ruby-2.0.0-p481/
./configure --prefix=/usr/local
make
sudo make install
```

Y, finalmente, ``sudo gem install ohai chef``


![Instalando](http://fotos.subefotos.com/7378f669c28249174130139c21d34adfo.jpg)


Aunque conseguí instalarlo, cuando en el siguiente ejercicio traté de ejecutar una receta, no fui capaz (me aparecía un error en el que no se encontraba el paquete ya que, según "Chef", no se había especificado versión y no había ninguna disponible).

La solución la encontré ejecutando el sistema sobre una máquina virtual que ejecutaba Ubuntu 12.04 de 32 bits. Instalé ejecutando el segundo método que se propone en el guión de prácticas



***

###Ejercicio 2###

#####Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual.#####

El árbol de ficheros que me ha quedado es el siguiente.

```
.
├── cookbooks
│   ├── emacs
│   │   ├── metadata.rb
│   │   └── recipes
│   │       └── default.rb
│   ├── fichero
│   │   ├── metadata.rb
│   │   └── recipes
│   │       └── default.rb
│   └── nginx
│       ├── metadata.rb
│       └── recipes
│           └── default.rb
├── node.json
└── solo.rb
```

Los ficheros contienen lo siguiente:

cookbooks>emacs>recipes>default.rb

```
package 'emacs'
```

cookbooks>emacs>metadata.rb

```
maintainer       "Israel Blancas"
maintainer_email "iblancasa@gmail.com"
description      "Instalar emacs"
version          "1.0"
name		         "emacs"

recipe "emacs", "Instalar emacs"
```

cookbooks>fichero>recipes>default.rb

```
directory '/home/iblancasa/fichero'
file "/home/iblancasa/fichero/fichero.md" do
owner "iblancasa"
group "iblancasa"
mode 00777
action :create
content "Hola, soy un fichero"
end
```

cookbooks>fichero>metadata.rb

```
maintainer       "Israel Blancas"
maintainer_email "iblancasa@gmail.com"
description      "Crea un directorio"
version          "1.0"
name		         "fichero"

recipe "fichero", "Crea un directorio"
```

cookbooks>nginx>recipes>default.rb

```
package 'nginx'
```

cookbooks>nginx>metadata.rb

```
maintainer       "Israel Blancas"
maintainer_email "iblancasa@gmail.com"
description      "Instalar NGINX"
version          "1.0"
name		         "nginx"

recipe "nginx", "Instalar NGINX"
```

node.json

```
{
  "nginx": {
    "version"	: "latest",
    "user"		: "www-data",
    "port"		: "80"
    },

    "emacs": {
      "version"	: "latest"
      },

      "fichero": {
        "name"	: "Fichero"
        },

        "run_list":	[
        "recipe[nginx]",
        "recipe[emacs]",
        "recipe[fichero]"
        ]
      }
```

solo.rb

```
file_cache_path "/home/iblancasa/chef"
cookbook_path "/home/iblancasa/chef/cookbooks"
json_attribs "/home/iblancasa/chef/node.json"
```

![Ejecución de las recetas](http://fotos.subefotos.com/3a8c522640cf24b7c655023dd3980151o.jpg)



***

###Ejercicio 3###

#####Escribir en YAML la siguiente estructura de datos en JSON#####
#####{ uno: "dos", tres: [ 4, 5, "Seis", { siete: 8, nueve: [ 10, 11 ] } ] }#####

[He usado esto para orientarme](http://docs.ansible.com/YAMLSyntax.html)

```
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


***

###Ejercicio 4###

Tras comprobar que Python está instalado e instalar pip con ``sudo apt-get install python-pip``.
