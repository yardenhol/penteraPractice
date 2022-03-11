FROM ubuntu/nginx

COPY index.html /usr/share/nginx/html/index.html
COPY index.html /var/www/html/index.nginx-debian.html
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN apt-get update && apt-get install -y openssh-server supervisor nginx
RUN mkdir -p /var/run/sshd /var/log/supervisor


EXPOSE 22 80 


CMD ["/usr/bin/supervisord"]