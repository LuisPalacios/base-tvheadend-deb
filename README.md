# Introducción

Este contenedor solo sirve para crear un fichero temporal del tipo tvheadend_3.9.XXXX~yyyyyyyy~precise_amd64.deb, es decir lo utilizo para crear un paquete .DEB para poder instalar más adelante el programa Tvheadend. Durante el build del contenedor se compila Tvheadend desde la versión inestable disponible en GitHub, una vez creado el contenedor contiene un fichero .DEB en su intenrior que podremos extraer simplemente ejecutándolo. 

Tvheadend es un DVR (Digital Video Recorder) y servidor de streaming de TV que soporta todo tipo de fuentes, por ejemplo las que necesitan un interfaz o receptor DVB-C, DVB-T(2), DVB-S(2), ATSC y por otro lado las fuentes "IP", conocidas como IP Televisión o IPTV (que usan los protocolos UDP o HTTP) y no necesitan de ningún receptor físico.

Para el caso de las fuentes que necesitan un dispositivo o interfaz para la recepción quizá no tiene demasiado sentido un contenedor Docker debido al vínculo con dicho interfaz, pero sí lo tiene para el caso de usar solo fuentes IPTV.

Para poder crear un contenedor con Tvheadend necesito crear el .DEB y copiarlo a otro proyecto también disponible en GitHub llamado [luispa/base-tvheadend](https://registry.hub.docker.com/u/luispa/base-tvheadend/). 

