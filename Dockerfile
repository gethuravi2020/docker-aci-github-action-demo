FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get install apache2 -y

RUN echo 'This is my Docker Training Web Page - Welcome' > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80