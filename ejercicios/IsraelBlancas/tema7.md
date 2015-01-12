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


***

###Ejercicio 2###

#####Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual.#####


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
