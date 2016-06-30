FROM registry.dataos.io/library/centos:6.6
WORKDIR /root
ADD start.sh /root
ENTRYPOINT ["/bin/bash", "-c", "/root/start.sh"]
