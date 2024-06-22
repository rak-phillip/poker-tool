FROM node:20

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install --frozen-lockfile && yarn global add serve

COPY . .

RUN yarn build

EXPOSE 4000

CMD [ "serve", "-s", "dist", "-l", "4000" ]
