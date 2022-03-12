#!/bin/bash



pushd reverse-proxy && podman-compose up -d && popd

pushd blog-a && podman-compose up -d && popd

sleep infinity