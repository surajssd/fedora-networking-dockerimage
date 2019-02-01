FROM  registry.fedoraproject.org/fedora:29

RUN dnf install --setopt=tsflags=nodocs -y \
    htop \
    procps \
    net-tools \
    iproute \
    bind-utils \
    iputils \
    traceroute \
    && \
    dnf clean all
