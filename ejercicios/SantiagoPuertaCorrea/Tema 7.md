
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
