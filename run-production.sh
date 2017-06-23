#!/bin/bash
docker stop haproxylab
docker rm -f haproxylab
docker run -it -p 80:80 --name haproxylab haproxylab