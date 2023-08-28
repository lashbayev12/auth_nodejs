FROM node:18-alpine
WORKDIR /auth
ADD package.json package.json
RUN npm install
ADD . .
ENV NODE_ENV production
RUN npm start
CMD ["npm","start"]
EXPOSE 3000