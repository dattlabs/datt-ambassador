FROM datt/datt-base:latest
MAINTAINER John Albietz "inthecloud247@gmail.com"


ADD files/serf-scripts /files/
ADD files/supervisor/ /etc/supervisor/


EXPOSE 7946 7373
