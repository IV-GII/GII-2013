#Tema 2
###Ejercicio 1
#####Instalar un entorno virtual para tu lenguaje de programación favorito (uno de los mencionados arriba, obviamente).
En mi caso, he istalado el entorno virtual de Python llamado [virtualenv](http://virtualenv.readthedocs.org/en/latest/). 

Para porder instalarlo, he tenido que instalar previamente [pip vers.1.3.1](http://stackoverflow.com/questions/4324558/whats-the)

Para instalarlo he utilizado los siguientes comandos:
	
    sudo pip intall virtualenv
    
###Ejercicio 2
#####Darse de alta en algún servicio PaaS tal como Heroku, Nodejitsu u OpenShift.
Para este ejercicio me he dado de alta en la plaataforma [OpenShift](https://www.openshift.com/). Primero creamos un nuevo perfil:
![altaOpenShift](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/altaOpenShift.png)
Confirmamos el email y ya estamos registrados:
![welcomeOpenshift](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/welcomeOpenshift.png)

###Ejercicio 3
#####Crear una aplicación en OpenShift y dentro de ella instalar WordPress.
OpenShift nos deja crear Apps basicas gratuitas. Estos son los pasos de como he creado la mia: 

-Buscamos la App que viene por defecto de Wordpress:
![wordpress](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/wordpress.png)
Y pulsamos en install y ya tenemos una App simple funcionando.

Esta es mi [App](http://appjavi-ejer3.rhcloud.com)

###Ejercicio 4
#####Crear un script para un documento Google y cambiarle el nombre con el que aparece en el menú, así como la función a la que llama.

Para trabajar con Apps script nos iremos a [esta](http://www.google.com/script/start/) pagina y pulsamos en Start Scripting. Para empezar, elegimos un proyecto en blanco.

He utilizado un ejemplo de script de Google, que es el suguiente:

```
function createAndSendDocument() {
  // Create a new Google Doc named 'Hello, world!'
  var doc = DocumentApp.create('Hello, world!');

  // Access the body of the document, then add a paragraph.
  doc.getBody().appendParagraph('This document was created by Google Apps Script.');

  // Get the URL of the document.
  var url = doc.getUrl();

  // Get the email address of the active user - that's you.
  var email = Session.getActiveUser().getEmail();

  // Get the name of the document to use as an email subject line.
  var subject = doc.getName();

  // Append a new string to the "url" variable to use as an email body.
  var body = 'Link to your doc: ' + url;

  // Send yourself an email with a link to the document.
  GmailApp.sendEmail(email, subject, body);
}
```
Tras guardarlo, lo ejecutamos y nos pedira que lo autoricemos:

![autorizacion](https://github.com/JavideBaza/GII-2014/blob/master/ejercicios/JavierArandaIzquierdo/Capturas/autorizacion.png)