FROM  registry.fedoraproject.org/fedora:27

RUN dnf install --setopt=tsflags=nodocs -y htop procps net-tools iproute && \
    dnf clean all
