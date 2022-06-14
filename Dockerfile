FROM node:14

WORKDIR /server

COPY package.json .

COPY . .

RUN npm install

RUN npm install --save-dev @babel/core @babel/cli

EXPOSE 3000

CMD ["npm", "run", "build"]
