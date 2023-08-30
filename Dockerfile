FROM debian:jessie-slim

RUN rm /etc/apt/sources.list
RUN echo "deb http://archive.debian.org/debian-security jessie/updates main" >> /etc/apt/sources.list.d/jessie.list
RUN echo "deb http://archive.debian.org/debian jessie main" >> /etc/apt/sources.list.d/jessie.list

RUN apt-get update
RUN apt-get install -y --force-yes wget

RUN wget https://fastdl.mongodb.org/linux/mongodb-linux-i686-3.2.22.tgz
RUN tar -zxvf mongodb-linux-i686-3.2.22.tgz
RUN mv mongodb-linux-i686-3.2.22 mongodb
RUN mkdir -p /data/db
RUN export PATH=/mongodb/bin:$PATH

EXPOSE 27017
ENTRYPOINT ["./mongodb/bin/mongod", "--storageEngine=mmapv1"]
