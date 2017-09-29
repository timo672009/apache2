FROM alpine

LABEL maintainer="Jeeva S. Chelladhurai <sjeeva@gmail.com>"

RUN apk add --no-cache apache2 && \
    mkdir -p /run/apache2 && \
    echo "<html><h1>Docker Cookbook</h1></html>" > \
        /var/www/localhost/htdocs/index.html

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
