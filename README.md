This is a docker image that has essesntial to look what is happening inside a boot2docker machine. Since this operating system is
different then we need a way to use the full blown tools provided in any linux. So creating this image.

Run using following command:

```bash
eval `minishift docker-env`
docker run -it --privileged --pid host --net host surajd/fedora-networking bash
```

**Note**: If you are using minikube then replace above `minishift` with `minikube`.


In this machine you can run following notable tools:

- htop
- netstat
- dig
- ip
- ifconfig
