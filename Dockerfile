FROM node:8-alpine

RUN npm install -g docprint && \
  npm cache clear --force

COPY ./docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]