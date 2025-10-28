#!/bin/bash
apt update -y
apt upgrade -y
apt install -y wget curl nano net-tools dnsutils iputils-ping telnet netcat-openbsd traceroute nmap
echo 'export EDITOR=nano' >> /root/.bashrc
cd /root
wget -O grpcurl.deb https://github.com/fullstorydev/grpcurl/releases/download/v1.9.3/grpcurl_1.9.3_linux_amd64.deb
dpkg -i /root/grpcurl.deb