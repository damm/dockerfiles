.. image:: https://www.docker.io/static/img/linked/dockerlogo-horizontal.png

Percona Galera MySQL Server Dockerfile
--------------------------------------

This is a subimage of *galera/golden*.  It applies startup and configuration files.  If the $DB environment variable exists; it will try and setup *galera* replication.

Building
------------

``docker build -t galera/master .``

Running
------------

Master
------------
``docker run -v /disk1/mysql/db:/mysql/db -v /disk1/mysql/logs:/mysql/logs -v /disk1/mysql/config:/mysql/config -name mysql galera/master``

Joiners
------------
``docker run -v /disk2/mysql/db:/mysql/db -v /disk2/mysql/logs:/mysql/logs -v /disk2/mysql/config:/mysql/config -link /mysql:db galera/master``

Joiners without -link
-----------------------
``docker run -v /disk2/mysql/db:/mysql/db -v /disk2/mysql/logs:/mysql/logs -v /disk2/mysql/config:/mysql/config -e DB_PORT_3306_TCP_ADDR=4.2.2.1 galera/master``

Caveats
------------

Master needs a 'mysql'@'localhost user created as it needs to be backed up this way using xtrabackup.  You need to create this user on the master.

```create user 'mysql'@'localhost';```
```GRANT ALL ON *.* TO 'mysql'@'localhost';```
