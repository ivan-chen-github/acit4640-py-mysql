#!/bin/sh

echo "[database]
MYSQL_HOST = $MYSQL_HOST
MYSQL_PORT = 3306
MYSQL_DB = $MYSQL_DATABASE
MYSQL_USER = $MYSQL_USER
MYSQL_PASSWORD = $MYSQL_PASSWORD" > ./backend.conf

wait-for-it -h ${MYSQL_HOST} -p 3306 -t 60 -s -- gunicorn wsgi:app -b 0.0.0.0:5000
