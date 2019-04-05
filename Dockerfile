I'FROM httpd:latest
MAINTAINER John Whitley
COPY index.html /usr/local/apache2/htdocs/index.html
COPY httpd.conf /usr/local/apache2/conf/httpd.conf

#Expose Ports
EXPOSE 8080 8443
