FROM node:14.17-alpine

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

ENV PORT 3000

VOLUME [ "/app/data" ]

CMD ["node", "app.js"]
