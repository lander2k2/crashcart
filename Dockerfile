FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
      curl \
      dnsutils \
      iperf \
      iputils-ping \
      jq \
      python \
      vim

