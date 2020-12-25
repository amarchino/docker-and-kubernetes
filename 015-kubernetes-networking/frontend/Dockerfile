FROM node:14-alpine as builder

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

FROM nginx:1.19-alpine

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf.template
COPY conf/docker-entrypoint.sh /

COPY --from=builder /app/build /usr/share/nginx/html

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
