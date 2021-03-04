
FROM node:14

# Set the Current Working Directory inside the container
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm run build

COPY . .

EXPOSE 3000

CMD [ "node", "dist/app.js" ]