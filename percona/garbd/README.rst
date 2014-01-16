.. image:: https://www.docker.io/static/img/linked/dockerlogo-horizontal.png

Percona Galera Arbitrator
----------------------------

This is a Dockerfile for building an arbitrator.  It uses Docker Links for Service discovery and expects to find the $DB environment variable.  It *will not work* without it.  So if this is for a service outside of Docker you can specify this on the command line.

Specifying the Host
---------------------
``docker run -e DB_PORT_3306_TCP_ADDR=127.0.0.1 galera/garbd``

Otherwise below would work too.


Starting it up
----------------
``docker run -link /mysql:db  galera/garbd``

