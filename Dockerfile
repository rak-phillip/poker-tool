FROM node:20

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install --frozen-lockfile && yarn global add serve

COPY . .

ENV VUE_APP_SERVER_URL=${VUE_APP_SERVER_URL}

RUN yarn build

EXPOSE 4000

CMD [ "serve", "-s", "dist", "-l", "4000" ]
