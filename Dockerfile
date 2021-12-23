# Stage 1 - the build process
FROM node:16 as build-step
WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn
COPY . ./
RUN yarn build

EXPOSE 3000
ENTRYPOINT ["yarn", "start"]