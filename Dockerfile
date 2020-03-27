FROM ubuntu

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -yqq git curl python3-pip libyaml-dev zip unzip
RUN apt-get install -yqq nodejs npm

RUN pip3 install yamllint
RUN apt-get install -yqq jq
RUN pip3 install yq
RUN npm install -g ajv-cli

RUN apt-get install -yqq software-properties-common
RUN add-apt-repository ppa:plt/racket
RUN apt-get install -yqq racket
RUN raco pkg install --scope installation rackunit
RUN raco pkg install --scope installation https://github.com/astynax/racket-review.git

WORKDIR /exercises-racket
COPY . .
