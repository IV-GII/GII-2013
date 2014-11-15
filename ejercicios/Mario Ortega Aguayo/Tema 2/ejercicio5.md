###Ejercicio5

**Buscar un sistema de automatización de la construcción para el lenguaje de programación y entorno de desarrollo que usemos habitualmente.**

El sistema de automatización sobre el que he investigado es Ant para Java.

Apache Ant es una herramienta usada en programación para la realización de tareas mecánicas y repetitivas, normalmente durante la fase de compilación y construcción (build). Es, por tanto, un software para procesos de automatización de compilación, similar a Make pero desarrollado en lenguaje Java y requiere la plataforma Java, así que es más apropiado para la construcción de proyectos Java.

Esta herramienta, hecha en el lenguaje de programación Java, tiene la ventaja de no depender de las órdenes del shell de cada sistema operativo, sino que se basa en archivos de configuración XML y clases Java para la realización de las distintas tareas, siendo idónea como solución multi-plataforma.

La diferencia más notable entre Ant y Make es que Ant utiliza XML para describir el proceso de generación y sus dependencias, mientras que Make utiliza formato makefile. Por defecto, el archivo XML se denomina build.xml.

**Ejemplo: **

Hemos comentado que hace tenemos que hacer un fichero build.xml en el que indicamos las tareas. Vamos a hacer uno sencillo con un par de cosas, por ejemplo "compilar", generar el jar con "empaqueta" y generar el javadoc con "documenta".

Empezamos escribiendo algo como esto con el notepad, el vi o el editor de texto que más nos guste.

`<?xml version="1.0"?>
<project name="Mi_Proyecto" default="todo">
</project>`
