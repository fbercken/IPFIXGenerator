# Network Simulator

This project provides a Dockerfile allowing to generate malicious trafic.
More details are available at the following addres [github](https://github.com/alphasoc/flightsim)


## To build the docker image

```
docker build -t sim .
```

## To run the docker image in interactive mode 

```
docker run -it sim bash
```


## To generate malicious dns from command line on a specific network interface (here lo)


```
/root/go/bin/flightsim run  -i lo  c2-dns
```
