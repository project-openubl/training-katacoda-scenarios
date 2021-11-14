#!/bin/bash

container_id_postgresql=$(docker ps -f name=postgresql -f status=running -q)

if [ ! -z "$container_id_postgresql" ]
then
    echo "done"
fi
