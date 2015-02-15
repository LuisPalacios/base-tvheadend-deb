# Introducción

Este contenedor solo sirve para crear un fichero temporal del tipo:

* tvheadend_3.9.XXXX~yyyyyyyy~precise_amd64.deb

El objetivo es crear ese fichero para que pueda ser utilizado por el proyecto también disponible en GitHub llamado

* [luispa/base-tvheadend](https://registry.hub.docker.com/u/luispa/base-tvheadend/). 

Durante el build del contenedor se compila Tvheadend desde la [versión inestable disponible en GitHub: tvheadend/tvheadend](https://github.com/tvheadend/tvheadend). El .deb queda dentro del contenedor y al ejecutarlo se copiará automáticamente al directorio en el que te encuentres. 


# Gestión del contenedor

## Clonar

Para tener tu propia copia debes clonarlo desde Github

    ~ $ clone https://github.com/LuisPalacios/docker-tvheadend-deb.git

A partir de ese momento ya puedes crear la imagen localmente con el siguiente comando:

    $ docker build -t luispa/base-tvheadend-deb ./


## Ejecutar para obtener el .DEB

Una vez que tienes la imagen, ejecuta el contenedor: 

	docker run -t -i -v $(pwd):/output luispa/base-tvheadend-deb /bin/bash


## Copiar el .DEB

El último paso consiste en copiar el .deb al proyecto base-tvheadend

* [luispa/base-tvheadend](https://registry.hub.docker.com/u/luispa/base-tvheadend/). 
