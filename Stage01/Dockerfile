# Étape 1: Utiliser l'image officielle gcc:4.9 pour la compilation
FROM gcc:4.9

# Étape 2: Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3: Copier le fichier source C (main.c) dans le conteneur
COPY main.c /app/

# Étape 4: Compiler le fichier source C
RUN gcc main.c -o app

# Étape 5: Créer le volume persistant pour la base de données
VOLUME /app/data

# Étape 6: Exécuter le programme compilé
CMD ./app
