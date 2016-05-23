FROM registry.dataos.io/library/centos:6.6
MAINTAINER TPC-H-test zhangzr@maitewang.com
RUN sed  -i 's/mirrorlist/#mirrorlist/'  /etc/yum.repos.d/CentOS-Base.repo
RUN sed  -i 's/#baseurl/baseurl/'  /etc/yum.repos.d/CentOS-Base.repo 
RUN sed  -i 's/mirror.centos.org/mirrors.aliyun.com/'  /etc/yum.repos.d/CentOS-Base.repo
RUN yum -y install wget make gcc gcc-c++ postgresql tar
RUN wget https://s3.cn-north-1.amazonaws.com.cn/tpch/tpch.tar.gz
WORKDIR /
RUN tar xf tpch.tar.gz
RUN cd ./tpch/dbgen/ && make
CMD ["tail", "-f", "/dev/null"]
