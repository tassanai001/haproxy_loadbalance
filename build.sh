#!/bin/bash
docker rmi -f haproxylab
docker build -t haproxylab .