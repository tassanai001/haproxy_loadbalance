#!/bin/bash
if [ $1 = "balanceing" ]
 then
    echo "============= balanceing ============="
    docker rmi -f haproxylab
    docker build -f Dockerfile.balanceing -t haproxylab .
elif [ $1 = "fixable" ]
 then
    echo "============= fixable ============="
    docker rmi -f haproxylab
    docker build -f Dockerfile.fixable -t haproxylab .
else
    echo "============ POOLNODE RUN ================="
    echo "Please Enter Parameters [ balanceing , fixable ]"
fi