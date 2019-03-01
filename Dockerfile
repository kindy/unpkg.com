FROM node:8-alpine

ENV PORT 8080
EXPOSE 8080
WORKDIR /app

COPY . .

RUN npm install && npm run build && npm cache clean --force

CMD ["node", "server.js"]
