#!/bin/bash

# Créer un volume Docker persistant
docker volume create app_data

# Lancer le conteneur avec le volume persistant monté sur /app/data
docker run -v app_data:/app/data --name my-app-container my-app

# Exécuter une première fois pour créer la base de données
echo "Première exécution : Base de données créée."
docker start -i my-app-container

# Exécuter une seconde fois pour vérifier que la base de données est persistée
echo "Deuxième exécution : Base de données trouvée."
docker start -i my-app-container
