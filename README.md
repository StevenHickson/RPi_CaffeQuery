#Install requirements for python and query CNN code  
sudo apt-get install python python-pycurl python-lxml python-pip  
sudo pip install grab  
sudo apt-get install apache2  
mkdir -p /dev/shm/images  
sudo ln -s /dev/shm/images /var/www/images  
Then you must forward your router from port 5005 to port 80 on the Pi  
run test.sh  
  
#How does this work  
First we use raspistill to take an image and save it to memory as /dev/shm/images/test.jpg. Since this is symlinked in /var/www, we should be able to see it at http://YOUR-EXTERNAL-IP:5005/images/test.jpg.  
Then we use grab to qull up the Caffe demo framework with our image and get the classification results. This is done in queryCNN.py which gets the results.  
  
##The output of ./test.sh should look something like this:  
```
pi@raspberrypi ~/CaffeCNNQuery $ ./test.sh  
projector  
device  
equipment  
optical instrument  
electronic equipment  
```
