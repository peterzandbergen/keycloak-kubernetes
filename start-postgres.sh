#!/bin/bash
kubectl create -f postgres-data-persistentvolumeclaim.yaml -f postgres-deployment.yaml -f postgres-service.yaml
