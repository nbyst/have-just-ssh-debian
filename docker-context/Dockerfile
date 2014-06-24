FROM tianon/debian:wheezy
MAINTAINER nobuyasu tomura

RUN apt-get update && apt-get upgrade -y
RUN echo root:password | chpasswd

## setup sshd
RUN apt-get install sudo openssh-server -y
RUN mkdir -p /var/run/sshd
#EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]

## add new user
# RUN useradd -d /home/hogehoge -m -s /bin/bash hogehoge
# RUN echo hogehoge:${your_pass} | chpasswd
# RUN echo 'hogepass ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
