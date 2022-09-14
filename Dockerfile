FROM tomsik68/xampp:8

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y php-dev
RUN apt-get install -y expect

ADD init.sh /
ADD xdebug.ini.txt /
ADD install-pear.sh /
ADD install-xdebug.sh /

RUN chmod 744 ./install-pear.sh
RUN chmod 744 ./install-xdebug.sh
RUN ./install-xdebug.sh
RUN cat /xdebug.ini.txt >> /opt/lampp/etc/php.ini

EXPOSE 9000

RUN cat /init.sh > startup.sh