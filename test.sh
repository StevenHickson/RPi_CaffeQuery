#!/bin/bash

raspistill -o /dev/shm/images/test.jpg
python queryCNN.py http://stevenhickson.com:5050/images/test.jpg
