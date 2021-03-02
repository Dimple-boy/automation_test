#!/bin/bash
set -uex

apt update -y
apt install nginx -y
ufw allow 'Nginx HTTP'
echo ufw status #to see output to log and contrast with what digital ocean says i should be seeing. 
