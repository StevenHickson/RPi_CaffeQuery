#!/bin/bash

mkdir -p /dev/shm/images
raspistill -o /dev/shm/images/test.jpg
python queryCNN.py http://YOUR-EXTERNAL-IP:5005/images/test.jpg
