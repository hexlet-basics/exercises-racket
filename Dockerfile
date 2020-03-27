FROM ubuntu

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -yqq software-properties-common
RUN add-apt-repository ppa:plt/racket
RUN apt-get update && apt-get install -yqq \
    git curl zip unzip \
    python3-pip libyaml-dev jq \
    nodejs npm \
    racket

RUN pip3 install yamllint yq

RUN npm install -g ajv-cli

RUN raco pkg install \
    --scope installation --batch \
    --no-docs --no-cache --no-trash \
    rackunit \
    review

WORKDIR /exercises-racket
COPY . .
