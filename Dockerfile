FROM phusion/baseimage
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qq update
RUN apt-get -y install apt-utils vim cl-awk wget apache2 unzip supervisor bash

RUN chown -R www-data:www-data /var/www

RUN cd /var/www && wget -r -k -l 1 --mirror http://garanties.cat || true
RUN rm -rf /var/www/html && mkdir /var/www/html && cp -R /var/www/garanties.cat/* /var/www/html 

ADD script.sh /opt/script.sh
RUN chmod 755 /opt/script.sh

EXPOSE 80 443
ENTRYPOINT ["/bin/bash", "/opt/script.sh"]
