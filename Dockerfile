#
# Contenedor que crea el paquete de instalación .deb de Tvheadend para 
# ser utilizado por otro contendor (base-tvheadend)
# ---------------------------------------------------------------------
#

# Desde donde parto...
#
FROM ubuntu:14.04

#
MAINTAINER Luis Palacios <luis@luispa.com>

# Pido que el frontend de Debian no sea interactivo
ENV DEBIAN_FRONTEND noninteractive

# Actualizo e instalo
RUN apt-get update && \
    apt-get -y install locales \
               openssh-server \
    	       supervisor \
               wget

# Preparo locales
#
RUN locale-gen es_ES.UTF-8
RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

# Preparo el timezone para Madrid
#
RUN echo "Europe/Madrid" > /etc/timezone; dpkg-reconfigure -f noninteractive tzdata

# 
# Dependencias de TVHeadEnd
RUN apt-get install -y git make dkms dpkg-dev \
               debconf-utils software-properties-common \
               build-essential debhelper libswscale-dev \		       
               libavahi-client-dev libavcodec-dev \
               libavfilter-dev libavformat-dev \
               libavutil-dev libswscale-dev \
               liburiparser1 liburiparser-dev \
               debhelper libcurl4-gnutls-dev a52dec \		       
               libssl-dev libiconv-hook1 libiconv-hook-dev \
               librtmp-dev
               
# Probar en el futuro a añadir: libavcodec-extra-5??

# Permitir a root vía SSH
#
RUN echo 'root:docker2014' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN mkdir /var/run/sshd

# TVHeadEnd, descarga
RUN git clone https://github.com/tvheadend/tvheadend.git /srv/tvheadend \
    && cd /srv/tvheadend && git checkout master 

# TVHeadEnd, compilo y creo un .deb
#
RUN cd /srv/tvheadend && AUTOBUILD_CONFIGURE_EXTRA="--enable-libffmpeg_static --enable-kqueue --enable-bundle" ./Autobuild.sh -t precise-amd64

# Directorios expuestos
#
VOLUME /output

#-----------------------------------------------------------------------------------

# Ejecutar siempre al arrancar el contenedor este script
#
ADD do.sh /do.sh
RUN chmod +x /do.sh
ENTRYPOINT ["/do.sh"]

#
# Si no se especifica nada se ejecutará lo siguiente: 
#
CMD ["/bin/bash"]
