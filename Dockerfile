FROM node:10.14.1-alpine
MAINTAINER Yusaku Tanaka <yusaku.tanaka@topgate.co.jp>

RUN apk add bash; \
    apk add git; \
    npm install -g @angular/cli

ADD . /opt/angular

WORKDIR /opt/angular
RUN npm install

EXPOSE 4200
ENTRYPOINT ["/usr/local/bin/ng", "serve", "--host", "0.0.0.0"]
