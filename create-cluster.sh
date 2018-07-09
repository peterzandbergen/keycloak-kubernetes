#!/bin/bash
# Command to create the cluster at GKE
gcloud beta container --project "eemshaven-test" clusters create "cluster-1"     --zone "europe-west4-a" --username "admin"     --cluster-version "1.10.5-gke.0" --machine-type "n1-standard-1"     --image-type "COS" --disk-type "pd-standard" --disk-size "100"     --scopes     "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append"     --num-nodes "3" --enable-cloud-logging --enable-cloud-monitoring --network "default"     --subnetwork "default" --addons HorizontalPodAutoscaling,HttpLoadBalancing     --no-enable-autoupgrade --enable-autorepair


# Delete the cluster:
gcloud container clusters delete cluster-1 --zone=europe-west4-a --project eemshaven-test

