FROM docker.pkg.github.com/melodyn/hexlet-basics-base-image/image:base

RUN apt-get install -yqq software-properties-common
RUN add-apt-repository ppa:plt/racket
RUN apt-get install -yqq racket
RUN raco pkg install \
    --scope installation --batch \
    --no-docs --no-cache --no-trash \
    rackunit \
    review

WORKDIR /exercises-racket
COPY . .
