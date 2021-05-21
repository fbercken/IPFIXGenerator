FROM ubuntu:18.04 


ENV HOME='/root'
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en'
ENV MODULE=''

RUN export DEBIAN_FRONTEND=noninteractive  \
    && apt-get update  \
    && apt-get install -q -y wget sudo vim net-tools iproute2 
  
RUN wget -q https://golang.org/dl/go1.16.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf go1.16.linux-amd64.tar.gz \
    && echo "export PATH=$PATH:/usr/local/go/bin" >> /root/.profile 

COPY docker-entrypoint.sh /root 
RUN  chmod +x /root/docker-entrypoint.sh

RUN /usr/local/go/bin/go get -u github.com/alphasoc/flightsim/...

COPY run.sh /root
RUN chmod +x /root/run.sh

ENTRYPOINT ["/root/run.sh"]
