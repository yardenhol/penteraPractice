FROM ubuntu/nginx
#ENV change=<h1>changeText</h1>

COPY index.html /var/www/html/index.nginx-debian.html
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN apt-get update && apt-get install -y openssh-server supervisor nginx
RUN mkdir -p /var/run/sshd /var/log/supervisor
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 yardenInsideUser 
RUN  echo 'yardenInsideUser:test' | chpasswd

#CMD ["/bin/bash", "-c", "echo $change > /var/www/html/index.nginx-debian.html"]

EXPOSE 22 80 

CMD ["/usr/bin/supervisord"] 