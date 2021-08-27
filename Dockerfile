FROM node:alpine

ARG ADDR

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

RUN npm install --production

RUN chown -R node /app/node_modules

COPY . .

EXPOSE ${ADDR}

CMD ["npm", "start"]
