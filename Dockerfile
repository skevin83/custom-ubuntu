FROM ubuntu:latest
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y wget curl nano net-tools dnsutils iputils-ping telnet netcat-openbsd traceroute nmap
RUN echo 'export EDITOR=nano' >> /root/.bashrc
RUN wget -O grpcurl.tar.gz https://github.com/fullstorydev/grpcurl/releases/download/v1.9.3/grpcurl_1.9.3_linux_amd64.deb && \
  tar -xzf grpcurl.tar.gz && \
  mv grpcurl /usr/local/bin/ && \
  chmod +x /usr/local/bin/grpcurl && \
  rm grpcurl.tar.gz
