#!/bin/bash
apt-get update
apt-get install default-jre unzip git-core wget -y
wget http://download01.thoughtworks.com/go/13.4.0/ga/go-server-13.4.0-18334.deb -O /tmp/go-server.deb
dpkg -i /tmp/go-server.deb
rm /tmp/go-server.deb
