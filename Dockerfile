FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
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

RUN curl -fsSLo \
    /usr/share/keyrings/kubernetes-archive-keyring.gpg \
    https://packages.cloud.google.com/apt/doc/apt-key.gpg

RUN echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] \
    https://apt.kubernetes.io/ kubernetes-xenial main" | tee \
    /etc/apt/sources.list.d/kubernetes.list

RUN apt-get update && apt-get install -y kubectl

CMD ["sleep", "86400"]

