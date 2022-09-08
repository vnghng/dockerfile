#!/bin/bash
git clone git@github.com:vnghng/dockerfile.git /tmp
sed -i 's/FFintech Company/Viet Nam/' /tmp/dockerfile/text.txt
sudo docker build -t test:latest /tmp/dockerfile
ID=$(sudo docker run -dt test:latest)
sudo docker logs $ID > logs  

