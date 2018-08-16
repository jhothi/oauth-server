#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag oauth-server "$DOCKER_USERNAME"/oauth-server:1.0
docker push "$DOCKER_USERNAME"/oauth-server
