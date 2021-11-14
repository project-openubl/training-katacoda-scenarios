#!/bin/bash

container_id_searchpe=$(docker ps -f name=searchpe -f status=running -q)

if [ ! -z "$container_id_searchpe" ]
then
    echo "done"
fi
