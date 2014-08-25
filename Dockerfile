FROM thewtex/opengl-nvidia-ubuntu:340.24
MAINTAINER Matt McCormick <matt@mmmccormick.com>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y wget
RUN apt-get install -y software-properties-common

RUN apt-add-repository 'deb http://downloads.makerbot.com/makerware/ubuntu trusty main'
RUN wget http://downloads.makerbot.com/makerware/ubuntu/dev@makerbot.com.gpg.key -O /tmp/makerbot.gpg.key
RUN apt-key add /tmp/makerbot.gpg.key
RUN apt-get update

RUN apt-get install -y makerware

CMD makerware
