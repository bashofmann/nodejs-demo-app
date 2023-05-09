FROM node:16

WORKDIR /app

COPY package*.json /app/
RUN npm install --omit=dev

COPY . /app

EXPOSE 3000

ENTRYPOINT ["node", "server.js"]
