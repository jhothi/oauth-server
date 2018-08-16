#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag oauth-server spidey345/oauth-server:1.0
docker push spidey345/oauth-server
