FROM tianon/debian:wheezy
MAINTAINER nobuyasu tomura

ADD ./sources.list.jp /etc/apt/sources.list
RUN apt-get -q update && apt-get -q upgrade -y
RUN echo root:password | chpasswd

## setup sshd
RUN apt-get -q install sudo openssh-server -y
RUN mkdir -p /var/run/sshd
RUN mkdir -p /root/.ssh
RUN /etc/init.d/ssh start
EXPOSE 22

## setup rsyslog
RUN apt-get -q install rsyslog -y
RUN /etc/init.d/rsyslog start

## add new user
# RUN useradd -d /home/hogehoge -m -s /bin/bash hogehoge
# RUN echo hogehoge:${your_pass} | chpasswd
# RUN echo 'hogepass ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

CMD ["/sbin/init","3"]
