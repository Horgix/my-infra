#! /bin/bash

SERVICES=`find . -maxdepth 1 -type d | grep -v '^.$\|^./old$'`

for service in $SERVICES
do
  docker-compose -f ${service}/docker-compose.yml ps | tail -n +3
done
