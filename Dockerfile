FROM node
MAINTAINER aaaaaaaaaaaaaaaaaaaaa
RUN wget https://s3.cn-north-1.amazonaws.com.cn/tpch/tpch.tar.gz
RUN tar xf tpch.tar.gz
RUN cd ./tpch/dbgen/
EXPOSE 5000

ADD *.json index.* ./

RUN npm install && node_modules/.bin/bower install --allow-root

CMD ["npm", "start"]
