#!/bin/bash

/etc/init.d/mysql start
cd /root/openmrs-core/webapp

mvn jetty:run

#executes program specified in the arguments that called this script
exec "$@"
