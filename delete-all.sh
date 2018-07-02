#!/bin/bash
kubectl delete  \
    -f keycloak-deployment.yaml -f keycloak-service.yaml \
    -f postgres-data-persistentvolumeclaim.yaml -f postgres-deployment.yaml -f postgres-service.yaml