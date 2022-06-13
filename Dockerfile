FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

RUN npm install --save-dev @babel/core @babel/cli

RUN npm uninstal bcrypt

RUN npm install bcryptjs --save

RUN npm run migrate

RUN npm run build 
