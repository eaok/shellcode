FROM ubuntu:18.04
LABEL maintainer="kcoewoys"

WORKDIR /home/src

RUN apt-get update && apt-get install -q -y vim  && apt-get clean;

COPY Makefile .

COPY . .


CMD ["bash", "-c", "/home/src/hello.sh"]
