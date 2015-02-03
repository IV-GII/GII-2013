###Ejercicio 4

Accedemos a nuestro GoogleDrive. Si queremos crear por primera vez un script tendremos que conectar dicha aplicacion dado que no viene por defecto, una vez conectada aparacera siempre.

He creado un pequeño script para cambiar el nombre de los documentos:

```sh
function myFunction() {
  var files = DriveApp.getFilesByName('Archivo');
  while(files.hasNext()) {
    var fichero = files.next();
    fichero.setName('NuevoArchivo');
  }
}
```