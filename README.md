# keycloak-kubernetes

- Added an initContainer to keycloak-deployment to wait for 
the postgres-keycloak service.
- Next version needs to have credentials for the database in a secrets store.