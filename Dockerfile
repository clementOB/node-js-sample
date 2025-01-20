# Étape 1 : Utiliser une image de base Node.js
FROM node:16-alpine

# Étape 2 : Définir le répertoire de travail
WORKDIR /usr/src/app

# Étape 3 : Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Étape 4 : Installer uniquement les dépendances de production
RUN npm install --production

# Étape 5 : Copier le reste des fichiers de l'application
COPY . .

# Étape 6 : Exposer le port utilisé par l'application (8080)
EXPOSE 8080

# Étape 7 : Démarrer l'application
CMD ["npm", "start"]
