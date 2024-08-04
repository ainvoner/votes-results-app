#!/bin/bash

# Votes results App

echo "Building and pushing Votes results App"

docker build -t kind-registry:5001/votes-results-app:latest .

docker push kind-registry:5001/votes-results-app:latest

echo "Deploying App"

kubectl apply -f templates/app.yaml 