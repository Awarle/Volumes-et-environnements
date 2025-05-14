#!/bin/bash

# Définir les valeurs des variables d'environnement
export PORT=4242
export POSTGRE_PASSWORD=etna42
export POSTGRE_USER=admin

# Lancer le conteneur Docker avec les variables d'environnement
docker run -d -p $PORT:$PORT \
  -e PORT=$PORT \
  -e POSTGRE_PASSWORD=$POSTGRE_PASSWORD \
  -e POSTGRE_USER=$POSTGRE_USER \
  --name node-app-container my-node-app
