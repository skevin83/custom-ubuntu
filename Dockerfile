FROM ubuntu:latest
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y wget curl nano net-tools dnsutils iputils-ping telnet netcat-openbsd traceroute nmap
RUN echo 'export EDITOR=nano' >> /root/.bashrc
