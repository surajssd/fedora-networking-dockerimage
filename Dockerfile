FROM  registry.fedoraproject.org/fedora:32

RUN dnf install --setopt=tsflags=nodocs -y \
    htop \
    procps \
    net-tools \
    iproute \
    bind-utils \
    iputils \
    traceroute \
    tcpdump \
    nmap-ncat \
    iptables \
    telnet \
    && \
    dnf clean all
