FROM node:latest

WORKDIR /app/backend

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8800

CMD [ "npm", "start", "--", "--host", "0.0.0.0"]