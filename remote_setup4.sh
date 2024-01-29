#!/bin/bash

# 更新和安装必要的包
sudo apt-get update
sudo apt-get install -y python3-pip unzip
sudo pip3 install gunicorn
sudo apt-get install git -y
# 解压 Flask 应用
git clone https://github.com/hmmmq/mp2.git

# 进入 Flask 应用目录
cd ~/flaskProject1

# 安装依赖
pip3 install -r requirements.txt

# 运行 Flask 应用
gunicorn --bind 0.0.0.0:8000 app:app
