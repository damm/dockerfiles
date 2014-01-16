.. image:: https://www.docker.io/static/img/linked/dockerlogo-horizontal.png

Galera Golden Image Dockerfile Layer
-------------------------------------

Percona Galera installs perfectly fine; but it appears that the last command is not cached.  So if you are Deploying Galera it can be time consuming to reinstall it over and over.  Consider this a Docker Image Layer to save you time.

Building
------------

``docker build -t galera/golden .``
