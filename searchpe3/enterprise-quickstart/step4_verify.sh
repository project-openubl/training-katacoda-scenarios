#!/bin/bash

container_id=$(docker ps -f name=searchpe -f status=running -q)

if [ ! -z "$container_id" ]
then
    echo "done"
fi
