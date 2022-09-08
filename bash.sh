#!/bin/bash
mkdir /tmp/dockerfile
git clone git@github.com:vnghng/dockerfile.git /tmp/dockerfile
sed -i 's/FFintech Company/Viet Nam/' /tmp/dockerfile/text.txt
sudo docker build -t test:latest /tmp/dockerfile
ID=$(sudo docker run -dt test:latest)
sudo docker logs $ID >> /tmp/logs
rm -rf /tmp/dockerfile
echo "Done!!"  

