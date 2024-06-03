# Get node image
# node 22.2.0
FROM node:lts-alpine

WORKDIR /app
ENV NODE_ENV production
RUN npm install -g firebase-tools
COPY package*.json ./
RUN NODE_ENV=staging npm install
COPY . .
RUN npm run build
