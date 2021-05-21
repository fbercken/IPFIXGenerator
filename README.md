# BUild docker image
docker build -t sim .

# Run docker image with ec2-dns module
docker run -it -e MODULE=ec2-dns sim bash



# To generate malicious dns from command line on a specific network interface (here lo)
/root/go/bin/flightsim run  -i lo  c2-dns
