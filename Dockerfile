FROM ubuntu:latest
WORKDIR /root
COPY script.sh /root
RUN chmod +x /root/script.sh && /root/script.sh