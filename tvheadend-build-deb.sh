#!/bin/bash
#
# By LuisPa Feb'15

# Script que extrae el tvheadend_3.9.XXXX~yyyyyyyy~precise_amd64.deb para poder
# ser usado en el proyecto luispa/base-tvheadend
#
#docker run -t -i -v $(pwd):/output luispa/base-tvheadend-deb /bin/bash


#
# Para ejecutar en modo debug, comentar la línea anterior y descomentar la siguiente:
#
docker run -t -i -e DEBUG="yes" -v $(pwd):/output luispa/base-tvheadend-deb /bin/bash

