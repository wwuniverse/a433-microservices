#!/bin/bash
docker build -t item-app:v1 .
docker images
docker tag item-app:v1 wwuniverse/item-app:v1
echo $PASSWORD | docker login -u wwuniverse --password-stdin
docker push wwuniverse/item-app:v1