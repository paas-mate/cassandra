FROM ttbb/base:jdk11

ARG version=4.1.1

RUN wget -O cassandra.tar.gz https://downloads.apache.org/cassandra/$version/apache-cassandra-$version-bin.tar.gz && \
mkdir -p /opt/cassandra && \
tar -xf cassandra.tar.gz -C /opt/cassandra --strip-components 1 && \
echo "export PATH=$PATH:/opt/cassandra/bin" >> /etc/bashrc && \
rm -rf cassandra.tar.gz

ENV CASSANDRA_HOME /opt/cassandra

WORKDIR /opt/cassandra
