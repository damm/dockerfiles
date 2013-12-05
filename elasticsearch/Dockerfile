FROM    ubuntu:latest
MAINTAINER <scott@likens.us>
RUN sed -i.bak 's/main$/main universe/' /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl
RUN apt-get update && apt-get -y install python-software-properties wget curl
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java7-installer && apt-get clean
RUN update-alternatives --display java
RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/environment
RUN mkdir -p /data/elasticsearch/shared
RUN mkdir -p /data/elasticsearch/releases
RUN cd /data/elasticsearch/releases;curl https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.tar.gz -o elasticsearch-0.90.7.tar.gz
RUN cd /data/elasticsearch/releases;tar zxf elasticsearch-0.90.7.tar.gz
ADD elasticsearch.yml /data/elasticsearch/releases/elasticsearch-0.90.7/config/
EXPOSE 9200
ENTRYPOINT /data/elasticsearch/releases/elasticsearch-0.90.7/bin/elasticsearch -f
VOLUME ["/data/elasticsearch/shared"]
