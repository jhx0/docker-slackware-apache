FROM vbatts/slackware:latest

MAINTAINER jhx <jhx0x00@gmail.com>

RUN slackpkg update \
    && yes | slackpkg install \
    httpd \
    apr \
    cyrus-sasl \
    icu4c \
    sqlite

COPY httpd.conf /etc/httpd/httpd.conf
COPY htdocs /srv/httpd/htdocs
RUN chown -hR apache:apache /var/www/htdocs/

ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
