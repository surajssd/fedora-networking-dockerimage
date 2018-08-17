FROM  registry.fedoraproject.org/fedora:28

RUN dnf install --setopt=tsflags=nodocs -y htop procps net-tools iproute bind-utils iputils && \
    dnf clean all
