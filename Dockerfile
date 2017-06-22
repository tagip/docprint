FROM node:8-alpine

RUN yarn global add docprint --prefix /usr/local

COPY ./docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
