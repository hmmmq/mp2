#!/bin/bash

# EC2 实例信息
EC2_ADDRESS="ubuntu@ec2-13-212-120-251.ap-southeast-1.compute.amazonaws.com"
KEY_PATH="instances.pem"

# Flask 应用归档文件
APP_ARCHIVE="flaskProject1.zip"

# 确保您的 PEM 文件权限正确
chmod 400 $KEY_PATH

# 将 Flask 应用上传到 EC2 实例
scp -i $KEY_PATH $APP_ARCHIVE $EC2_ADDRESS:~

# 运行远程安装脚本
ssh -i $KEY_PATH $EC2_ADDRESS 'bash -s' < remote_setup3.sh
