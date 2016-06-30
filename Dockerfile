FROM registry.dataos.io/library/centos:6.6
WORKDIR /tpch
ADD . /tpch
ENTRYPOINT ["/bin/bash", "-c", "/tpch/start.sh"]
