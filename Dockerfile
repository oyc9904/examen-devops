# Image de base Node 18 [cite: 28]
FROM node:18-alpine

# Dossier de travail
WORKDIR /app

# Copie des fichiers de dépendances
COPY package.json ./

# Installation des dépendances
RUN npm install

# Copie du code source
COPY . .

# Exposition du port 8080 [cite: 29]
EXPOSE 8080

# Commande de lancement
CMD ["node", "server.js"]
