# Introducción

Este contenedor solo sirve para crear un fichero temporal del tipo:

* tvheadend_3.9.XXXX~yyyyyyyy~precise_amd64.deb

El objetivo es crear ese fichero para que pueda ser utilizado por el proyecto también disponible en GitHub llamado

* [luispa/base-tvheadend](https://registry.hub.docker.com/u/luispa/base-tvheadend/). 

Durante el build del contenedor se compila Tvheadend desde la [versión inestable disponible en GitHub: tvheadend/tvheadend](https://github.com/tvheadend/tvheadend). Se crea dichero fichero .deb dentro del contenedor y al ejecutarlo se copiará automáticamente al directorio en el que te encuentres. 


# Gestión del contenedor

## Clonar

Para tener tu propia copia debes clonarlo desde Github

    ~ $ clone https://github.com/LuisPalacios/docker-tvheadend.git

A partir de ese momento ya puedes crear la imagen localmente con el siguiente comando:

    $ docker build -t luispa/base-tvheadend ./


## Ejecutar para obtener el .DEB

Una vez que tienes la imagen luispa/base-tvheadend, el siguiente paso es muy sencillo, consiste en ejecutar el contenedor: 

	docker run -t -i -v $(pwd):/output luispa/base-tvheadend-deb /bin/bash

He dejado de todas formas un archivo "tvheadend-build-deb.sh" donde tienes dicho comando para facilitarlo.


## Copiar el .DEB al otro proyecto

El último paso consiste en copiar el .deb al proyecto que lo necesita para poder ejecutar el servicio Tvheadend

* [luispa/base-tvheadend](https://registry.hub.docker.com/u/luispa/base-tvheadend/). 
