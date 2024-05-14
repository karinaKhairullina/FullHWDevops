#!/bin/bash

# передан ли параметр -t
if [[ $# -eq 0 || "$1" != "-t" || -z "$2" ]]; then
    echo "Usage: $0 -t <tag>"
    exit 1
fi

# тег для образа
TAG="$2"

# сборка Docker-образа
docker build -t my_image:$TAG .
