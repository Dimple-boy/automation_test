#!/bin/bash
set -uex
#Line 2 means if the scripts fails then packer fails, and provide detailed exception message. 
"echo 'packer' | sudo su"
#The above command will switch to root, and hopefully prevent the install failing. 
apt update -y
apt install nginx -y
ufw allow 'Nginx HTTP'
echo ufw status #to see output to log and contrast with what digital ocean says i should be seeing. 
