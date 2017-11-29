FROM ubuntu:latest

MAINTAINER varga.akos.95@gmail.com

RUN apt-get update

RUN apt-get -y install curl

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash

RUN apt-get -y install nodejs

COPY . /src

RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js