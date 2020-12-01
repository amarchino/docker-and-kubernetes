FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret

VOLUME [ "/app/node_modules" ]
EXPOSE 80
CMD ["node", "app.js"]
