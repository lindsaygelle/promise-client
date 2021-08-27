FROM node:alpine

ARG ADDR

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install --production

COPY . .

EXPOSE ${ADDR}

CMD ["npm", "start"]
