#!/bin/bash

# Build backend Docker image
docker build -t mental_health_survey_api ./mental_health_survey_api

# Build frontend Docker image
docker build -t mental-health-survey-frontend ./mental-health-survey-frontend

# Apply Kubernetes deployment
kubectl apply -f deployment.yaml

# Wait for deployments
sleep 10

# Check deployments, services, pods
kubectl get deployments
kubectl get services
kubectl get pods

# Open the frontend URL
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open http://localhost:4200/
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open http://localhost:4200/
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    start http://localhost:4200/
else
    echo "Please open http://localhost:4200/ in your browser."
fi

# Wait for user
sleep 30
