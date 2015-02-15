# Introducción

Este contenedor solo sirve para crear un fichero temporal del tipo:

* tvheadend_3.9.XXXX~yyyyyyyy~precise_amd64.deb

El objetivo es crear este paquete .DEB para que pueda ser utilizado por el proyecto también disponible en GitHub llamado

* [luispa/base-tvheadend](https://registry.hub.docker.com/u/luispa/base-tvheadend/). 

Durante el build del contenedor se compila Tvheadend desde la versión inestable disponible en GitHub, se crea un fichero .DEB y al ejecutar dicho contenedor se extrae el fichero .DEB al directorio actual del Host, de modo que podremos copiarlo al otro proyecto. 

