.. image:: https://raw.github.com/fzaninotto/uptime/downloads/check_details.png

Uptime
------------

.. _Uptime: https://github.com/fzaninotto/uptime

Uptime::
  A remote monitoring application using Node.js, MongoDB and Twitter Bootstrap

>Provides a easy way to host each component of the stack required to support Uptime.  

+ Mongodb::
  Sample Dockerfile to build a mongodb docker instance; use -v to map the volume to the host for persistence.
+ Api::
  Sample Dockerfile to build the api controller without the monitoring built in.
+ Monitor::
  Sample Dockerfile to build the monitoring instance to poll with.

Note::
  I have not spent the time updating the system running this or adapting these for 0.6.5.  Using Links and Named containers it could be better (maybe?) like below.

Last Notes::
  If you enable authentication in the api; you must educate the monitor the credentials in the url.  http://myusername:password@$UPTIME_PORT_80_TCP_ADDR:$UPTIME_PORT_80_TCP_PORT/api
