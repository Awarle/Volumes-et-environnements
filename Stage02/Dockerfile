# Étape 1: Utiliser l'image gcc:14.2.0 pour la compilation
FROM gcc:14.2.0 AS build

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier source C++ dans le conteneur
COPY main.cpp .

# Compiler le fichier source en un binaire
RUN g++ -o myapp main.cpp

# Étape 2: Utiliser l'image debian:stable-slim pour l'exécution
FROM debian:stable-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le binaire depuis l'étape de construction
COPY --from=build /app/myapp .

# Lancer le binaire compilé
CMD ["./myapp"]
