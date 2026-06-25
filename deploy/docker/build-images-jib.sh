#!/bin/bash

set -e

cd ../..

echo "Building Docker images with Jib..."
cd configserver && ./mvnw clean compile jib:build && cd ..
cd gateway && ./mvnw clean compile jib:build && cd ..
cd user && ./mvnw clean compile jib:build && cd ..
cd product && ./mvnw clean compile jib:build && cd ..
cd order && ./mvnw clean compile jib:build && cd ..
cd notification && ./mvnw clean compile jib:build && cd ..

echo "All images built and pushed successfully."
