#!/bin/bash

podman run -it --privileged -p80:80 -p443:443 -v $PWD/data:/data  localhost/podman-inside-podman