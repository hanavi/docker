# My Personal Webserver 
#
# docker run -d --rm \
# 	   -p 80:80 \
#            -p 443:443 \
#            -v $HOME/working/docker/httpd/letsencrypt:/etc/letsencrypt \
#            -v $HOME/working/docker/httpd/htdocs:/usr/local/apache2/htdocs \
#            --name web \
#            website

FROM httpd

RUN apt-get update

RUN apt-get install -y certbot python-certbot-apache 

COPY htpasswd /usr/local/apache2/conf/.htpasswd
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

RUN ln -s /etc/letsencrypt/live/www.hanavi.net/cert.pem /usr/local/apache2/conf/server.crt
RUN ln -s /etc/letsencrypt/live/www.hanavi.net/privkey.pem /usr/local/apache2/conf/server.key

CMD ["httpd-foreground"]
