#Tema 7
### Ejercicio 1
#####Instalar chef en la máquina virtual que vayamos a usar

Tras intentar sin exito instalar tal y como vemos en el guion, opte por descargar Ruby 2.2.0 desde la web he instalado chef con el siguiente comando:
```bash
curl -L https://www.opscode.com/chef/install.sh | sudo bash
```
![1](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/tema7-1.png)


###Ejercicio 2
#####Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual.

###Ejercicio 3
#####Escribir en YAML la siguiente estructura de datos en JSON:
#####{ uno: "dos",tres: [ 4, 5, "Seis", { siete: 8, nueve: [ 10, 11 ] } ] }
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

###Ejercicio 4
#####Desplegar los fuentes de la aplicación de DAI o cualquier otra aplicación que se encuentre en un servidor git público en la máquina virtual Azure (o una máquina virtual local) usando ansible.

He utilizado los siguientes comando pasa instalar Ansible:
```bash
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```
Tras esto, Ansible esta instalado y listo para utilizar.

###Ejercicio 5
#####1. Desplegar la aplicación de DAI con todos los módulos necesarios usando un playbook de Ansible.

#####2. ¿Ansible o Chef? ¿O cualquier otro que no hemos usado aquí?.

###Ejercicio 6
#####Instalar una maquina virtual Debian usando Vagrant y conectar con ella

###Ejercicio 7
#####Crear un script para provisionar `nginx` o cualquier otro servidor web que pueda ser útil para alguna otra práctica

###Ejercicio 8
#####Configurar tu máquina virtual usando vagrant con el provisionador ansible
	