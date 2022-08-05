FROM node:current-alpine3.15
RUN mkdir-/app
WORKDIR /app
COPY package*.json/app/
ADD . /app
RUN npm install
COPY ./app/
EXPOSE 3000
CMD ["npm","run","start"]
