#!/bin/bash
mkdir /tmp/dockerfile
DATE=$(date +%H:%M)
git clone git@github.com:vnghng/dockerfile.git /tmp/dockerfile
echo $DATE > /tmp/dockerfile/text.txt
sudo docker build -t test:latest /tmp/dockerfile
ID=$(sudo docker run -dt test:latest)
CRON1="17:02"
CRON2="17:03"
if [ "$DATE" = "$CRON1" ]; then
    sudo docker logs $ID >> /tmp/logs1
elif [ "$DATE" = "$CRON2" ]; then
    sudo docker logs $ID >> /tmp/logs2    
fi
rm -rf /tmp/dockerfile
echo "Done!!"  

