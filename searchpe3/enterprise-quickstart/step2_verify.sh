#!/bin/bash

container_id=$(docker ps -f name=elasticsearch -f status=running -q)

if [ ! -z "$container_id" ]
then
    echo "done"
fi
