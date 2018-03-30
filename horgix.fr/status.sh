#! /bin/bash

SERVICES=`find . -name '*.yml'`

for service in $SERVICES
do
  docker-compose -f ${service} ps | tail -n +3
done
