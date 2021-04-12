FROM node:alpine as base

WORKDIR /src
COPY package.json yarn.lock /src/
COPY . /src
EXPOSE 3000

FROM base as production

RUN npm install --production

CMD ["npm", "start"]