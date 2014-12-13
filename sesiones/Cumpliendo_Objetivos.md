#Instrucciones para rellenar el fichero de objetivos por sesión

Para llevar control de los objetivos que se van cumpliendo en la clase, se debe rellenar un fichero para subirlo al repositorio al final de la clase. Con un solo fichero por alumno es suficiente, así no hay que manejar varios ficheros en cada una.

* ''Nombre del fichero'' : nick_en_GitHub.md
* El fichero se creará al principio de la asignatura y se subirá al directorio <code>meta</code>.
* Se copian los objetivos de la sesión, por ejemplo los de la [del 29 de septiembre](2.md), al final del fichero.
* Se le añade los corchetes [] delante a cada objetivo.
* Se marca el objetivo si y cuando se haya llegado a alcanzar.
* Si es la primera vez, se añade con <code>add</code>; si no, se hace <code>commit</code> y en cualquier caso se hace <code>push</code> luego para que se actualice el repositorio.

Los objetivos sirven sobre todo para llevar un control personal de la asignatura, pero también para que el profesor pueda hacer más énfasis o reforzar lo que no se haya comprendido. 

##Script para añadir objetivos automáticamente

Si tienes `wget` instalado puedes usar el script `1o` (un objetivo) en el mismo repositorio de la forma siguiente

  ./1o meta/nick.md 4112013 1 http://github.com/nick/proyecto/blob/master/ejercicioxxx.md

Y adicionalmente

 ./1o meta/nick.md 4112013 1 http://github.com/nick/proyecto/blob/master/ejercicioxxx.md @nick_en_Twitter

El primer argumento es el fichero de los objetivos, el segundo [ el Id de sesión que sigue el formato del servicio web](https://github.com/IV-GII/ws) el tercero el número de objetivo tal como aparece en el wiki y el cuarto un URL en el se vea que se ha cumplido el objetivo (por ejemplo, el fichero que se haya subido a la forja). Este nick modifica el fichero añadiendo el nuevo objetivo y haciendo commit; tras eso no hay más que hacer push a continuación o cuando encarte.

[*Esto último todavía está por adaptar al nuevo año*]