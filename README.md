# STAGE00
# Objectifs
Passer des variables d'environnement via la commande de run

# Consignes
Vous devez créer un Dockerfile qui:

Sera basé sur Node.js 23
Installera les dépendances
Lancera le fichier app.js
Et faire un script bash qui lance le conteneur Docker avec des variables d'environnements: PORT, POSTGRE_PASSWORD et POSTGRE_USER.

La variable POSTGRE_PASSWORD doit être etna42.
La variable POSTGRE_USER doit être admin.
et la variable PORT doit être à 4242.

# Ressources
Vous trouverez un fichier app.js et un fichier package.json dans les ressources liées au projet.

Ces fichiers, app.js et package.json, sont nécessaires pour faire tourner votre application dans le conteneur.

# STAGE01
# Objectifs
Créer des volumes persistants afin de conserver l'état après l'arrêt d'un conteneur de l'application

# Consignes
Vous devez créer un Dockerfile qui:

Sera basé sur gcc:4.9
Compilera main.c et l'exécutera
Et faire un script bash qui lance le conteneur Docker avec un volume /app/data.

Lancer le votre programme une fois pour obtenir DATABASE CREATED et une seconde fois pour avoir DATABASE FOUND.

Avec ça vous conservez, en 2 instances différentes, la base de donnée, partique non ?

# STAGE02
# Objectifs
Compiler une application dans un environnement optimisé pour et lancer l'application dans un autre environnement optimisé pour.

# Consignes
Vous devez créer un Dockerfile qui:

Compilera le main.cpp sur une image gcc:14.2.0
Lancera le binaire obtenu via la compilation sur une image debian:stable-slim
