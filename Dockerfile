FROM ttbb/base:jdk8

RUN wget -O cassandra.tar.gz https://downloads.apache.org/cassandra/3.11.13/apache-cassandra-3.11.13-bin.tar.gz && \
mkdir -p /opt/sh/cassandra && \
tar -xf cassandra.tar.gz -C /opt/sh/cassandra --strip-components 1 && \
echo "export PATH=$PATH:/opt/sh/cassandra/bin" >> /etc/bashrc && \
rm -rf cassandra.tar.gz

ENV CASSANDRA_HOME /opt/sh/cassandra

WORKDIR /opt/sh/cassandra
