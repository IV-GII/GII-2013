###Ejercicio6

#####Identificar, dentro del PaaS elegido o cualquier otro en el que se dé uno de alta, cuál es el fichero de automatización de construcción e indicar qué herramienta usa para la construcción y el proceso que sigue en la misma.

OpenShift ejecuta scripts alojados en un repositorio Git. Si para la automatización no existe el script correspondiente, continua de forma normal.
Los enlaces deben estar alojados en el repositorio .openshift/action_hooks/. Para su contrucción realiza las siguientes fases:

<pre>
Pre-Receive: Durante el push, OpenShift comprueba que la aplicación se encuentra en un estado coherente.
Pre-Build: Ocurre cuando la aplicación está detenida y el nuevo repositorio dir se ha deplegado antes de la construcción. Ejecuta .openshift/action_hooks/pre_build script
Build: Construye la aplicación, descarga los deps necesarios, ejecuta el .openshift/action_hooks/build script y lo prepara para el despliegue.
Deploy: Ocurre justo antes de que la aplicación se inicie. Se realiza el trabajo de preparación necesario para conseguir que la aplicación esté lista para ser iniciada, esto se realiza en el .openshift/action_hooks/deploy hook.
Post-Deploy: Lo pueden necesitar algunas aplicaciones iniciadas para completar el proceso de implementación. Cuando se inicia la aplicación, se ejecutará el .openshift/action_hooks/post_deploy hook.
</pre>
