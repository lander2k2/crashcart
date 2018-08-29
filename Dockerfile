FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
      curl \
      dnsutils \
      iperf \
      iputils-ping \
      jq \
      python \
      speedtest-cli \
      stress \
      vim

CMD ["sleep", "86400"]

