#!/bin/bash
kubectl create -f keycloak-deployment.yaml -f keycloak-service.yaml 
# kubectl create -f postgres-data-persistentvolumeclaim.yaml -f postgres-deployment.yaml -f postgres-service.yaml
