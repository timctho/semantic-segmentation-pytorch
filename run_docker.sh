#!/bin/bash

docker build -t chargrid -f docker/Dockerfile .

xhost local:root
docker run -it \
           --gpus all \
           --privileged \
           -v $(pwd):/CharGrid \
           -w /CharGrid \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -e DISPLAY=$(echo $DISPLAY) \
           -e QT_X11_NO_MITSHM=1 \
           -e PYTHONPATH=/CharGrid \
           chargrid \
           /bin/bash