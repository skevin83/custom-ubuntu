FROM ubuntu:latest
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y wget curl net-tools dnsutils

