FROM registry.dataos.io/library/centos:6.6
WORKDIR /root
ADD . /root
ENTRYPOINT ["/bin/bash", "-c", "/root/start.sh"]
