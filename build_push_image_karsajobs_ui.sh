#!/bin/bash

# Build Docker Image
docker build -t nadiawaa/karsajobs-ui:latest .

# Mengubah nama image agar sesuai dengan GitHub Packages
docker tag nadiawaa/karsajobs-ui:latest docker.pkg.github.com/nadiawaa/a433-microservices/nadiawaa/karsajobs-ui:latest

# Login GitHub Packages 
echo "$PASSWORD_DOCKER_HUB" | docker login docker.pkg.github.com  -u nadiawaa --password-stdin

# Push Docker image to GitHub Packages
docker push docker.pkg.github.com/nadiawaa/a433-microservices/nadiawaa/karsajobs-ui:latest