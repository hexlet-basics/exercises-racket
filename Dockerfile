FROM ubuntu

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -yqq git python3-pip
RUN apt-get update && apt-get install -yqq libyaml-dev zip unzip
RUN apt-get install -yqq libedit-dev

RUN pip3 install yamllint
RUN apt-get update
RUN apt-get install -yqq software-properties-common
RUN add-apt-repository ppa:plt/racket
RUN apt-get update
RUN apt-get install -yqq racket
RUN raco pkg install --scope installation rackunit

WORKDIR /exercises-racket
COPY . .
