FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha
ENV MONGODB_CLUSTER_ADDRESS cluster0.gmhmejx.mongodb.net
ENV MONGODB_USERNAME obyat
ENV MONGODB_PASSWORD obyat

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]