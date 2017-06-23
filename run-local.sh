#!/bin/bash
docker stop haproxylab
docker rm -f haproxylab
docker run -it -p 8081:80 --name haproxylab haproxylab