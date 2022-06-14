FROM node:14

WORKDIR /server

COPY package.json .

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "build"]