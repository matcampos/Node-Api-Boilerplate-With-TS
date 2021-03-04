
FROM node:14

# Set the Current Working Directory inside the container
WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN rm -R node_modules

RUN npm install

RUN npm run build

EXPOSE 3000

CMD [ "node", "dist/app.js" ]