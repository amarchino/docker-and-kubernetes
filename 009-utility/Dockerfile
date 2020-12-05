FROM node:14-alpine


ARG USER_ID
ARG GROUP_ID

RUN deluser --remove-home node
RUN addgroup -g $GROUP_ID user
RUN adduser -D -u $USER_ID -G user user

USER user
WORKDIR /app

ENTRYPOINT [ "npm" ]
