#!/bin/bash

# Build Docker Image
docker build -t nadiawaa/karsajobs:latest .

# Mengubah nama image agar sesuai dengan GitHub Packages
docker tag nadiawaa/karsajobs:latest docker.pkg.github.com/nadiawaa/a433-microservices/nadiawaa/karsajobs:latest

# Login GitHub Packages 
echo "$PASSWORD_DOCKER_HUB" | docker login docker.pkg.github.com  -u nadiawaa --password-stdin

# Push Docker image to GitHub Packages
docker push docker.pkg.github.com/nadiawaa/a433-microservices/nadiawaa/karsajobs:latest