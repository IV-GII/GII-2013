
Gestión de infraestructuras virtuales
====================================================================

Ejercicio 1
-----------

**Instalar chef en la máquina virtual que vayamos a usar.**

Para instalar chef en ubuntu, lo primero que se tiene que hacer es instalar Ruby y Ruby Gems.
```bash
sudo apt-get update
sudo apt-get install ruby1.9.1 ruby1.9.1-dev
# instalo chef
sudo gem install ohai chef
```
![1_1.png](https://dl.dropboxusercontent.com/u/22433100/IV/t7/1_1.png)

Al intentar instalar chef, me da un error de instalación, me pide que la versión de ruby sea superior a la 2.0.0. Por lo que procedo a instalar esa versión, sigo la respuesta de [stackoverflow.com](http://stackoverflow.com/questions/16222738/how-do-i-install-ruby-2-0-0-correctly-on-ubuntu-12-04).
```bash
sudo apt-get update
sudo apt-get install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p481.tar.gz
tar -xvzf ruby-2.0.0-p481.tar.gz
cd ruby-2.0.0-p481/
./configure --prefix=/usr/local
make
sudo make install

# Una vez instalado ruby 2.0.0
sudo gem install ohai chef
```
![1_2.png](https://dl.dropboxusercontent.com/u/22433100/IV/t7/1_2.png)
![1_3.png](https://dl.dropboxusercontent.com/u/22433100/IV/t7/1_3.png)


Ejercicio 2
-----------

**Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual.**

Creo una carpeta llamada ***chef*** que va a tener dentro otra llamada ***cookbooks*** que va a ser donde tendré las recetas.
```bash
mkdir chef/cookbooks
```
Ahora dentro de ***cookbooks*** creo otras subcarpetas, una para cada receta añadiendo también a cada carpeta de recetas un fichero ***metadata.rb*** y otra subcarpeta llamada ***recipes*** que a su vez va a tener dentro un fichero ***default.rb***.
```bash
mkdir -p chef/cookbooks/emacs/recipes
mkdir -p chef/cookbooks/nginx/recipes
mkdir -p chef/cookbooks/test/recipes
```
Ahora voy a crear dentro de ***chef*** dos ficheros que son necesarios para chef, solo.rb y node.json:
solo.rb es el fichero de configuración de nuestro recetario, este en mi caso tendrá lo siguiente:
```bash
file_cache_path "/home/santiago/chef"
cookbook_path "/home/santiago/chef/cookbooks"
json_attribs "/home/santiago/chef/node.json"
```
![2_1.png](https://dl.dropboxusercontent.com/u/22433100/IV/t7/2_1.png)

Y node.json:
```bash
{
  "emacs": {
    "version": "23.0.50"
  },

  "nginx": {
    "version": "1.7.9",
    "user": "www-data",
    "port": "80"
  },

  "test": {
    "name": "test"
  },

  "run_list": [
    "recipe[emacs]",
    "recipe[nginx]",
    "recipe[test]"
  ]    
}
```
![2_2.png](https://dl.dropboxusercontent.com/u/22433100/IV/t7/2_2.png)

Tras esto preparo mis ficheros metadatos ***metadata.rb*** de cada receta:
```bash
maintainer       "Santiago José Puerta"
maintainer_email "elwarxy@gmail.com"
description      "emacs"
version          "1.0"

recipe "emacs", "Instalar emacs"
```
```bash
maintainer       "Santiago José Puerta"
maintainer_email "elwarxy@gmail.com"
description      "nginx "
version          "1.0"

recipe "nginx", "Instalar nginx"
```
```bash
maintainer       "Santiago José Puerta"
maintainer_email "elwarxy@gmail.com"
description      "test "
version          "1.0"

recipe "test", "Directorio test"
```
Ahora preparo cada receta ***default.rb***:
```bash
package 'emacs'
```
```bash
package 'nginx'
```
```bash
directory '/home/santiago/test'
file "/home/santiago/test/test.txt" do
  owner "santiago"
  group "santiago"
  mode 00544
  action :create
  content "Directorio de prueba"
end
```
Con esto ya tengo todas las recetas preparadas. Me ha quedado el siguiente arbol:
![2_3.png](https://dl.dropboxusercontent.com/u/22433100/IV/t7/2_3.png)

Ahora paso a ejecutarlo con el siguiente comando:
```bash
sudo chef-solo -c solo.rb
```


Ejercicio 3
-----------

**Escribir en YAML la siguiente estructura de datos en JSON{ uno: "dos",  tres: [ 4, 5, "Seis", { siete: 8, nueve: [ 10, 11 ] } ] }**

```yaml
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


Ejercicio 4
-----------

**Desplegar los fuentes de la aplicación de DAI o cualquier otra aplicación que se encuentre en un servidor git público en la máquina virtual Azure (o una máquina virtual local) usando ansible.**


