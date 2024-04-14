FROM node:14

WORKDIR /app

RUN npm install -g @angular/cli@12

COPY package*.json ./

RUN npm install

COPY . .

RUN ng build

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200", "--disable-host-check"]
