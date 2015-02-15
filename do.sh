#!/bin/bash
#
# Punto de entrada para el servicio tvheadend-deb, que consiste simplemente
# en copiar el ".deb" al directorio /output
#
# Activar el debug de este script:
# set -eux
#

##################################################################
#
# main
#
##################################################################

#
if [ -f /srv/tvheadend_3.9*precise_amd64.deb ]; then

	src=`ls -1 /srv/tvheadend_3*.deb`
	echo "Copio ${src} al directorio actual."
	cp ${src} /output

    exit
fi

# En caso de no encontrar el fichero ejecuto el comando
# que me piden (debería ser /bin/bash para hacer debug)
exec "$@"

