# Fedora image with debug tools

## Inspiration

- This is a docker image that has essesntial tools to look what is happening inside a boot2docker machine. Since this operating system is
different then we need a way to use the full blown tools provided in any linux. So creating this image.

- This image can also be used in your Kubernetes/OpenShift cluster to debug networking problems.

## Usage

### Debugging minikube host

Run using following command:

```bash
eval `minikube docker-env`
docker run -it --privileged --pid host --net host surajd/fedora-networking bash
```

### Debugging in Kubernetes cluster

To start an interactive terminal

```bash
kubectl run -it debug-network-$RANDOM --image-pull-policy=Always --image=surajd/fedora-networking --restart=Never
```

To clean all the debug pods

```bash
kubectl delete pod $(kubectl get pods | grep ^debug | awk '{print $1}')
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
