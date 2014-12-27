Creando aplicaciones en la nube: Uso de PaaS y SaaS.
====================================================================

Ejercicio 1
-----------

**Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).**

Para el desarrollo de este ejercicio, voy a usar node.js y su entorno de programación nodeenv.
He instalado node.js y tras esto instalo nodeenv con el comando:
```bash
sudo easy_install nodeenv
```
![EJ1_1.png](./capturas/t2/EJ1_1.png)
Una vez instalado nodeenv, paso a activar el entorno de programación con el comando:
```bash
 nodeenv env
 ```
Siendo **env** el directorio de trabajo. Una vez iniciado, ya se podrá utilizar el entorno de desarrollo.


-----

Ejercicio 2
-----------

**Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.**

He decidido darme de alta en el servicio PaaS Heroku.
![EJ2.png](./capturas/t2/EJ2.png)


-----

Ejercicio 3
-----------

**Crear una aplicación en OpenShift y dentro de ella instalar WordPress.**

Como no tengo cuenta en [OpenShift](https://www.openshift.com/), lo primero que hare sera registrarme.
![EJ3.png](./capturas/t2/EJ3.png)
Tras registrarme, voy a crear una nueva aplicación. En mi caso, voy a seleccionar **Wordpress 4**.
![EJ3_2.png](./capturas/t2/EJ3_2.png)
Nos pedirá una serie de datos, como el nombre de subdominio que queremos, etc...
![EJ3_3.png](./capturas/t2/EJ3_3.png)
Los completo, pulso en **Create Application** y espero a que temine la instalación.

Una vez completa la instalación, nos mostrará información relacionada con lo que tenemos instalado:
![EJ3_4.png](./capturas/t2/EJ3_4.png)

Tras esto, queda configurar la instalación de wordpress, para ello accedemos a la direccion que nos indica la captura anterior, en mi caso a [wordpress santiago](http://wordpress-santiagopuerta.rhcloud.com/) que nos redireccionará automaticamente a la configuración de wordpress.
![EJ3_5.png](./capturas/t2/EJ3_5.png)
![EJ3_6.png](./capturas/t2/EJ3_6.png)

Una vez configurado, podremos acceder al menú de administración de wordpress o ver el [wordpress santiago](https://wordpress-santiagopuerta.rhcloud.com/).
![EJ3_7.png](./capturas/t2/EJ3_7.png)
![EJ3_8.png](./capturas/t2/EJ3_8.png)


-----

Ejercicio 4
-----------

**Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.**

Siguiendo la página de developers de google [tu primer script](https://developers.google.com/apps-script/overview#your_first_script), voy a realizar mi primer script para Google drive.

Codigo que usaré:
```javascript
function createAndSendDocument() {
  var doc = DocumentApp.create('Hola mundo!');

  doc.getBody().appendParagraph('Documento creado por Google Apps Script.');

  // Get the URL of the document.
  var url = doc.getUrl();

  // Get the email address of the active user - that's you.
  var email = Session.getActiveUser().getEmail();

  // Get the name of the document to use as an email subject line.
  var subject = doc.getName();

  // Append a new string to the "url" variable to use as an email body.
  var body = 'Link al documento: ' + url;

  // Send yourself an email with a link to the document.
  GmailApp.sendEmail(email, subject, body);
}
```

Lo primero es acceder a [scripts google](http://www.google.com/script/start/) y pulsar sobre **Start Scripting** y seleccionar para que queremos el script, en mi caso para drive. Una vez seleccionado podremos insertar nuestro script.
![EJ4_1.png](./capturas/t2/EJ4_1.png)

Tras insertarlo, lo guardamos y lo ejecutamos pulsando el boton de play. Esto nos va a pedir permisos:
![EJ4_2.png](./capturas/t2/EJ4_2.png)
![EJ4_3.png](./capturas/t2/EJ4_3.png)
Los aceptamos y esto, segun el script nos enviará un email a un documento con el nombre **Hola mundo!**
![EJ4_4.png](./capturas/t2/EJ4_4.png)
![EJ4_5.png](./capturas/t2/EJ4_5.png)

Para cambiarle el nombre al script, pulsamos en la flecha que hay al lado del nombre y **Rename**.
![EJ4_6.png](./capturas/t2/EJ4_6.png)

Para cambiarle el nombre a la función, lo podemos hacer directamente en el codigo y despues guardar.
![EJ4_7.png](./capturas/t2/EJ4_7.png)



