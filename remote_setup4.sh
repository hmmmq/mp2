#!/bin/bash

#!/bin/bash

sudo apt-get update
sudo apt-get install -y python3-pip unzip
sudo pip3 install gunicorn
sudo apt-get install git -y

cd /home/ubuntu
git clone https://github.com/hmmmq/mp2.git
cd /home/ubuntu/mp2/flaskProject1
pip3 install -r requirements.txt


gunicorn --bind 0.0.0.0:8000 app:app
