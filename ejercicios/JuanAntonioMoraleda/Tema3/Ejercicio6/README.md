####Ejercicio 6: Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.

Descarga de jailkit desde la web [JAILKIT](http://olivier.sessink.nl/jailkit/).

Descomprimimos el paquete descargado:

	tar -xzvf jailkit-2.17.tar.gz

Una vez descomprimido lo instalamos:

	./configure make sudo make install

Creamos un directorio para la nueva jaula:

    mkdir /home/jaulas/jaula-ej6

Le hacemos propietario a root de la raiz de la jaula:

    chown root:root /home/jaulas/jaula-ej6

Damos permisos a la raiz de la jaula:

    chmod 0755 /home/jaulas/jaula-ej6

Indicamos lo que en esa jaula se podrá usar

    sudo jk_init -v /home/jaulas/jaula-ej6 basicshell
    sudo jk_init -v /home/jaulas/jaula-ej6 editors
    sudo jk_init -v /home/jaulas/jaula-ej6 extendedshell
    sudo jk_init -v /home/jaulas/jaula-ej6 netutils
    sudo jk_init -v /home/jaulas/jaula-ej6 ssh
    sudo jk_init -v /home/jaulas/jaula-ej6 sftp

Creamos y añadimos el usuario usuarioiv asignándole la jaula

    sudo adduser usuarioiv

    sudo jk_jailuser -m -j /home/jaulas/jaula-ej6 usuarioiv

    sudo passwd usuarioiv

Creamos el home de usuarioiv dentro de la jaula y le hacemos propietario de su home

    sudo mkdir -p /home/jaulas/jaula-ej6/home/usuarioiv

    sudo chown usuarioiv:usuarioiv /home/jaulas/jaula-ej6/home/usuarioiv
