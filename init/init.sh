#!/bin/sh

wait-for-it -h ${BACKEND_HOST} -p 5000 -t 60 -s -- curl -X POST ${BACKEND_URL}/add -H 'Content-Type: application/json' -d '{"name":"Ivan","bcit_id":"A00933974"}'
