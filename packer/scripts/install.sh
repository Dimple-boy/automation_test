#!/bin/bash
set -uex
#Line 2 means if the scripts fails then packer fails, and provide detailed exception message. 
apt update -y
apt install nginx -y
ufw allow 'Nginx HTTP'
echo ufw status #to see output to log and contrast with what digital ocean says i should be seeing. 
