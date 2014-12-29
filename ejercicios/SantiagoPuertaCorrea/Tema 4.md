
Virtualización ligera usando contenedores
====================================================================

Ejercicio 1
-----------

**Instala LXC en tu versión de Linux favorita. Normalmente la versión en desarrollo, disponible tanto en GitHub como en el sitio web está bastante más avanzada; para evitar problemas sobre todo con las herramientas que vamos a ver más adelante, conviene que te instales la última versión y si es posible una igual o mayor a la 1.0.**

Instalo en fedora con el siguiente comando:
```bash
sudo yum install lxc
```

Una vez que he instalado compruebo si mi máquina es compatible y si se encuentra lxc instalado con el comando:
```bash
lxc-checkconfig
```
![EJ1_1.png](./capturas/t4/EJ1_1.png)

Como esta todo **enabled** esto indica que puedo usarlo.

