#!/bin/bash

# Membuat Docker image dari Dockerfile dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan GitHub Packages
docker tag item-app:v1 docker.pkg.github.com/nadiawaa/a433-microservices/item-app:v1

# Login ke GitHub Packages dengan menggunakan password dari variabel lingkungan
echo "$PASSWORD_DOCKER_HUB" | docker login docker.pkg.github.com  -u nadiawaa --password-stdin

# Mengunggah image ke GitHub Packages
docker push docker.pkg.github.com/nadiawaa/a433-microservices/item-app:v1