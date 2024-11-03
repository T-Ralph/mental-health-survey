# Kubernetes Deployment

## Requirements
1. Docker
```bash
docker -v
```

2. Kubernetes
```bash
kubectl version
```

3. Repositories  
Clone the `mental_health_survey_api` and `mental-health-survey-frontend` reposiories into this directory in this structure:
```directory
mental-health-survey/
├── mental_health_survey_api/
│   └── Dockerfile
├── mental-health-survey-frontend/
│   └── Dockerfile
├── deploy.sh
└── deployment.yaml
```

## Start Deployment
```bash
.\deploy.sh
```

## Stop Deployment
```bash
kubectl delete -f deployment.yaml
```