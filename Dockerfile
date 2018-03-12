FROM httpd:latest
MAINTANER John Whitley
COPY index.html /usr/local/apache2/htdocs/

#Expose Ports
EXPOSE 9010
