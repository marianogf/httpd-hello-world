#!/bin/bash
sudo docker build -t my-httpd ~/httpd-hello-world
sudo docker run --name httpd -d -p 9010:9010 my-httpd
