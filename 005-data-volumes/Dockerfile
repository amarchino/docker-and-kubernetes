FROM node:14
WORKDIR /app

COPY package.json /app
RUN npm install

COPY . /app

ENV PORT 8080

EXPOSE $PORT
VOLUME [ "/app/node_modules" ]
VOLUME [ "/app/temp" ]
CMD [ "npm", "start" ]
