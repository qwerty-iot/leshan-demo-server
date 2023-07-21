Leshan Demo Server (container)
=================
This project generates a container that downloads the latest Leshan server demo jars when it starts.
The container does not need to be updated each time Leshan releases, only when new major changes or JAVA
dependencies are changed.

Running via Docker
------------------
```
docker network create leshan
docker run --rm --ti --net leshan -p 8080:8080 -p 5683:5683 -p5684:5684 --name leshan-demo-server [README.md](..%2Fazure-dns-updater%2FREADME.md) 
```

Running via Kubernetes
----------------------
A sample kubernetes configuration has been provided, it defines a pod and a service with a load balancer to provide connectivity.
```
kubectl apply -f leshan.yaml

# use the following to get the IP address of the leshan service.
kubectl get services
```