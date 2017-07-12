#!/bin/bash

service tomcat8 stop
rm -rf /var/log/tomcat8/*
rm -rf /var/lib/tomcat8/webapps/cas-management*
mv /var/www/drupal/cas-services-management-overlay/target/cas-management.war /var/lib/tomcat8/webapps/
service tomcat8 start

