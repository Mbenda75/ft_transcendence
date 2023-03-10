# Utilisez une image de base Node.js 14
FROM node:14-alpine

# Installation de NestJS CLI globalement
RUN npm install -g @nestjs/cli

# Définissez le répertoire de travail
WORKDIR /usr/src/app

# Copiez les fichiers package.json et package-lock.json
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez tous les autres fichiers
COPY . .

# Compilez l'application
RUN npm run build

# Exposez le port 3000
EXPOSE 3000

# Démarrez l'application
CMD [ "npm", "start" ]
