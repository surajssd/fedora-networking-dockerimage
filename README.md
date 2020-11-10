# Fedora image with debug tools

[![](https://images.microbadger.com/badges/image/surajd/fedora-networking.svg)](https://microbadger.com/images/surajd/fedora-networking "Download size of image and the number of layers")
[![](https://images.microbadger.com/badges/version/surajd/fedora-networking.svg)](https://microbadger.com/images/surajd/fedora-networking "Latest version on Docker Hub")

## Inspiration

- This is a docker image that has essesntial tools to look what is happening inside a boot2docker machine. Since this operating system is
different then we need a way to use the full blown tools provided in any linux. So creating this image.

- This image can also be used in your Kubernetes/OpenShift cluster to debug networking problems.

## Usage

### Debugging minikube host

Run using following command:

```bash
eval `minikube docker-env`
docker run -it --privileged --pid host --net host quay.io/surajd/fedora-networking bash
```

### Debugging in Kubernetes cluster

To start an interactive terminal

```bash
kubectl run -it --rm debug-network-$RANDOM --image-pull-policy=Always --image=quay.io/surajd/fedora-networking --restart=Never bash
```

## Tools

In this machine you can run following notable tools:

- `htop`
- `netstat`
- `dig`
- `ip`
- `ifconfig`
- `traceroute`
- `nslookup`
- `tcpdump`
- `nc`
- `iptables`
- `telnet`
