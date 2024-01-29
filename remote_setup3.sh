#!/bin/bash

# 更新和安装必要的包
sudo apt-get update
sudo apt-get install -y python3-pip unzip
sudo pip3 install gunicorn

# 解压 Flask 应用
unzip flaskProject1.zip

# 进入 Flask 应用目录
cd ~/flaskProject1

# 安装依赖
pip3 install -r requirements.txt

# 运行 Flask 应用
gunicorn --bind 0.0.0.0:8000 app:app
