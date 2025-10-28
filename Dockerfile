FROM ubuntu:latest
WORKDIR /root
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y wget curl nano net-tools dnsutils iputils-ping telnet netcat-openbsd traceroute nmap
RUN echo 'export EDITOR=nano' >> /root/.bashrc
RUN cd /root && wget -O grpcurl.deb https://github.com/fullstorydev/grpcurl/releases/download/v1.9.3/grpcurl_1.9.3_linux_amd64.deb
RUN dpkg -i /root/grpcurl.deb
