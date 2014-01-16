FROM ubuntu:quantal
MAINTAINER Scott Likens <scott@likens.us>

RUN apt-get update -yq
RUN DEBIAN_FRONTEND=noninteractive apt-get install openssh-server -y
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
RUN mkdir -p /etc/apt/sources.list.d/
ADD percona-56-source-list /etc/apt/sources.list.d/percona-5.6-sources.list
RUN apt-get update
RUN cat /proc/mounts | grep -v rootfs > /etc/mtab
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq percona-xtradb-cluster-galera-3.x percona-xtradb-cluster-server-5.6 percona-xtradb-cluster-client-5.6 
