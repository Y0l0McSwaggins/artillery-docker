FROM node:lts-alpine3.10

VOLUME /artillery
WORKDIR /artillery
USER node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm install -g artillery artillery-plugin-expect

ENTRYPOINT ["artillery"]
CMD ["--help"]