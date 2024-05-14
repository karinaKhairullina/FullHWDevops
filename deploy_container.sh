#!/bin/bash

# передан ли параметр -t
if [[ $# -eq 0 || "$1" != "-t" || -z "$2" ]]; then
    echo "Usage: $0 -t <tag>"
    exit 1
fi

# тег для образа
TAG="$2"

# существует ли образ с указанным тегом
if [[ "$(docker images -q my_image:$TAG 2> /dev/null)" == "" ]]; then
    echo "Image with tag $TAG does not exist. Please build the image first."
    exit 1
fi

# запускаем контейнера из образаа
docker run -d --name my_container my_image:$TAG
