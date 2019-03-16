FROM ubuntu

RUN apt-get update
RUN apt-get install -yqq software-properties-common
RUN add-apt-repository ppa:plt/racket
RUN apt-get update
RUN apt-get install -yqq racket
RUN raco pkg install --scope installation rackunit
RUN apt-get install -yqq libedit-dev
