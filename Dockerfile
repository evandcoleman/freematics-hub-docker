FROM alpine:3
MAINTAINER evandcoleman

RUN apk add --update make git gcc libc-dev

WORKDIR /usr/src/

RUN git clone https://github.com/stanleyhuangyc/Freematics.git
RUN cd Freematics/server/teleserver && make && make install

CMD [ "teleserver", "-d", "/data", "-g" ]