FROM galera/golden
MAINTAINER Scott Likens <scott@likens.us>

RUN /etc/init.d/mysql stop ; \
    usermod -d /mysql mysql && \
    rm -rf /etc/mysql /var/lib/mysql
RUN for dir in db logs bin config ; do \
  mkdir -p "/mysql/$dir" ; \
  done

ADD ./bin /mysql/bin

RUN chown -R mysql:mysql /mysql

EXPOSE 3306
EXPOSE 4567
VOLUME ["/mysql/db", "/mysql/logs", "/mysql/config"]
CMD ["/mysql/bin/run"]
