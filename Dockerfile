FROM ubuntu:latest

RUN useradd -ms /bin/bash user && echo "user:user" | chpasswd && echo "root:root" | chpasswd

RUN apt update && apt install -y vim \
  systemctl \
  cron \
  sudo \
  vim

RUN echo "* * * * * root cd /home/user && tar -cf /opt/backup.tar *" >> /etc/crontab

WORKDIR /home/user

COPY intro/ intro/

COPY init.sh /init.sh

RUN chmod +x /init.sh

CMD ["/init.sh"]
