FROM fedora:latest
RUN dnf install -y upgrade \
    && dnf install -y tuxpaint vim httpd
COPY myinfo.html /var/www/html/
EXPOSE 80
CMD httpd -D FOREGROUND 
