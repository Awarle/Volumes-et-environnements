# Étape 1: Utiliser l'image officielle Node.js 23
FROM node:23

# Étape 2: Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3: Copier les fichiers package.json et package-lock.json (si présent)
COPY package*.json ./

# Étape 4: Installer les dépendances de l'application
RUN npm install

# Étape 5: Copier le reste des fichiers de l'application
COPY . .

# Étape 6: Exposer le port configuré par la variable d'environnement
EXPOSE ${PORT}

# Étape 7: Lancer l'application avec Node.js
CMD ["node", "app.js"]
