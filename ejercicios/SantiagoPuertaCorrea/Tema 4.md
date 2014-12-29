
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


Ejercicio 2
-----------

**Comprobar qué interfaces puente se han creado y explicarlos.**

Tras instalar lxc he intentado crear un contenedor con el comando que se indica en el [temario](http://jj.github.io/IV/documentos/temas/Contenedores) pero me ha salido el siguiente error:
```bash
lxc_container: lxccontainer.c: get_template_path: 867 No such file or directory - bad template: fedora
lxc_container: lxccontainer.c: lxcapi_create: 1264 bad template: fedora
lxc_container: lxc_create.c: main: 271 Error creating container una-caja
```

Para solucionarlo, he instalado lxc-templates. 
```bash
sudo yum install lxc-templates
```

Tras esto me vuelve a salir otro error:
```bash
'debootstrap' command is missing
lxc_container: lxccontainer.c: create_run_template: 1125 container creation template for una-caja failed
lxc_container: lxc_create.c: main: 271 Error creating container una-caja
```

Que para solucionarlo, he instalado **debootstrap**:
```bash
sudo yum install debootstrap
```
Tras esto ya si podre crear el contenedor:
```bash
sudo lxc-create -t fedora -n una-caja
```
![EJ2_1.png](./capturas/t4/EJ2_1.png)
Espero a que termine y paso a iniciarla:
```bash
sudo lxc-start -n una-caja
```

Pero me encuentro con el siguiente error:
```bash
lxc-start: conf.c: instantiate_veth: 2978 failed to attach 'vethDWA76E' to the bridge 'virbr0': No such device
lxc-start: conf.c: lxc_create_network: 3261 failed to create netdev
lxc-start: start.c: lxc_spawn: 826 failed to create the network
lxc-start: start.c: __lxc_start: 1080 failed to spawn 'una-caja'
lxc-start: lxc_start.c: main: 342 The container failed to start.
lxc-start: lxc_start.c: main: 346 Additional information can be obtained by setting the --logfile and --logpriority options.
```

Para solucionarlo, he seguido el paso **Install management libraries and utilities** de la web [major.io](https://major.io/2014/04/21/launch-secure-lxc-containers-on-fedora-20-using-selinux-and-svirt/)

He usado lo siguiente:
- He eliminado el contenedor:
```bash
sudo lxc-destroy -n una-caja
```
- He instalado las librerias para el uso de red y se activan:
```bash
sudo yum install libvirt-daemon-lxc libvirt-daemon-config-network
sudo systemctl start libvirtd.service
sudo systemctl enable libvirtd.service
```
- Tras esto ya se puede crear el contenedor e iniciar:
```bash
sudo lxc-create -t fedora -n una-caja
sudo lxc-start -n una-caja
```

Para los comando basicos de **lxc* he usado [linuxcontainers.org](https://linuxcontainers.org/lxc/manpages/)
![EJ2_2.png](./capturas/t4/EJ2_2.png)

Tras todo esto paso a indicar las interfaces que se han creado:

Se me ha creado la interfaz **virbr0** para que el contendor tenga acceso a internet.
