FROM python:3.6
RUN mkdir /code
WORKDIR /code
#ADD . /code/

### install openssh
# Копируем ключи, чтобы повторно не создавать
COPY ssh_keys/server/ /etc/ssh/
# Меняем права, так чтобы openssh не ругался на лишние права
RUN chmod 0700 /etc/ssh/*
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server
RUN mkdir -p /var/run/sshd
RUN echo 'root:root' |chpasswd

# make it possible to connect to ssh console with root password
RUN mkdir -p /var/run/sshd && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config \
  && sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
  && touch /root/.Xauthority \
  && true

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt
CMD ["/usr/sbin/sshd", "-D"]