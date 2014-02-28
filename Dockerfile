FROM frio/openjdk-7-jre

MAINTAINER Arcus "http://arcus.io"
MAINTAINER frio "http://frio.name"

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install curl

# Install elasticsearch 1.0.0
RUN curl https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.0.deb -o /tmp/elasticsearch-1.0.0.deb
RUN dpkg -i /tmp/elasticsearch-1.0.0.deb
RUN rm -rf /tmp/*

EXPOSE 9200
EXPOSE 9300
ENTRYPOINT ["/usr/share/elasticsearch/bin/elasticsearch"]
