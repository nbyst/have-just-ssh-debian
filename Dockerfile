FROM tianon/debian:wheezy

RUN apt-get update && apt-get upgrade -y
RUN apt-get install sudo openssh-server -y
