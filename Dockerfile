FROM ubuntu:latest

MAINTAINER varga.akos.95@gmail.com

#RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm


#RUN yum install -y npm

RUN sudo apt-get install npm

COPY . /src


RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js