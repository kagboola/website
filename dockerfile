FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
RUN rm /var/www/html/index.html
ADD . /var/www/html
CMD apache2ctl -D FOREGROUND
