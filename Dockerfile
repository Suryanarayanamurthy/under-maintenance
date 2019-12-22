FROM node:10.15.3

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . ./

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD serve -s build -l 3001
