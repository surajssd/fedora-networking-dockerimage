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
docker run -it --privileged --pid host --net host --entrypoint bash surajd/fedora-networking
```

**Note**: If you are using minishift then replace above `minikube` with `minishift`.

### Debugging in Kubernetes cluster

```
kubectl run -it debug-network-$RANDOM --image surajd/fedora-networking --restart=Never
```


## Tools

In this machine you can run following notable tools:

- htop
- netstat
- dig
- ip
- ifconfig
