FROM alpine AS AngularAppFromDockerfile

RUN apk update && apk add git nodejs npm

RUN  npm install -g @angular/cli

WORKDIR /app

ADD . /app

RUN npm install

