FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
      curl \
      dnsutils \
      iperf \
      iperf3 \
      iproute2 \
      iputils-ping \
      jq \
      python \
      speedtest-cli \
      stress \
      tcpdump \
      traceroute \
      vim

CMD ["sleep", "86400"]

