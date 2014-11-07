##Ejercicios Tema 2
###Ejercicio 1
######Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).

**Nota**: *Este ejercicio pertenece a la relación de ejercicios anterior, por eso lo copiaré tal cual*

[nodeenv para node.js]:https://pypi.python.org/pypi/nodeenv/
[guía]:https://pypi.python.org/pypi/nodeenv/
[virtualenv]:https://github.com/pypa/virtualenv

Voy a instalar [nodeenv para node.js] para ello primero instalo *python-pip*:
```
sudo apt-get install python-pip
```
Ahora, siguiendo la [guía], instalamos *nodeenv*:
```
sudo pip install nodeenv
```
Ahora, ejecutamos **nodeenv**: 

Creamos un nuevo entorno:
```
nodeenv env
```

Activamos el nuevo entorno: 
```
. env/bin/activate
```

En un entorno podemos instalar paquetes. Ver la [guía].

Para desactivar el entorno tan solo hacemos:
```
deactivate_node
```

***
