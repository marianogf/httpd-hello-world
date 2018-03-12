#!/bin/bash

containercheck() {
#Check for httpd
  if [[ -n "$(sudo docker ps -q -f name=httpd)" ]]; then
    echo "httpd Container is already running."
  else
    echo "Running clean up on httpd."
    sudo docker rm httpd
    # Call to build and run container
    echo "Building and starting httpd Container"
    sudo docker build -t my-httpd ~/httpd-hello-world
    sudo docker run --name httpd -d -p 9010:9010 my-httpd
  fi
}


#Main
containercheck
