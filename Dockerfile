FROM node:13-alpine
RUN mkdir -p /home/app
WORKDIR /home/app
ADD . /home/app
RUN npm install
EXPOSE 3000
CMD ["npm","start"]
