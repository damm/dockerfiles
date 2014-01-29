FROM damm/java
MAINTAINER <scott@likens.us>
RUN mkdir -p /data/elasticsearch/shared
RUN mkdir -p /data/elasticsearch/releases
ADD https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.0.RC1.tar.gz /data/elasticsearch/releases/elasticsearch-1.0.0.RC1.tar.gz
RUN cd /data/elasticsearch/releases;tar zxf elasticsearch-1.0.0.RC1.tar.gz
ADD elasticsearch.yml /data/elasticsearch/releases/elasticsearch-1.0.0.RC1/config/elasticsearch.yml
RUN /data/elasticsearch/releases/elasticsearch-1.0.0.RC1/bin/plugin -i elasticsearch/marvel/latest
RUN /data/elasticsearch/releases/elasticsearch-1.0.0.RC1/bin/plugin -i mobz/elasticsearch-head
EXPOSE 9200
ENTRYPOINT /data/elasticsearch/releases/elasticsearch-1.0.0.RC1/bin/elasticsearch -f
VOLUME ["/data/elasticsearch/shared"]
