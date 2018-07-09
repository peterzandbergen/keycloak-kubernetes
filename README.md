# keycloak-kubernetes

- Added an initContainer to keycloak-deployment to wait for 
the postgres-keycloak service.
- Next version needs to have credentials for the database in a secrets store.


# Manual
To create the cluster at GKE make sure that you have configured the 
correct project and credentials.

Run the create cluster command from *create-cluster.sh*. 

Add the context to kubectl:

`gcloud container clusters get-credentials cluster-1 --zone europe-west4-a --project eemshaven-test`

Select the correct context with kubectl:

`kubectl config use-context <context name>`

Create the system: ./start-all.sh. 

Get the ip address of the keycloak service:

`kubectl get svc -o wide`

The external IP Address is the one to use.

