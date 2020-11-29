FROM node:14

WORKDIR /app

COPY package.json /app
RUN npm install

COPY . /app

ARG DEFAULT_PORT=8080
ENV PORT $DEFAULT_PORT

EXPOSE $PORT
VOLUME [ "/app/node_modules" ]
VOLUME [ "/app/temp" ]
CMD [ "npm", "start" ]
