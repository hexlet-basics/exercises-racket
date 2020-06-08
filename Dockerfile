FROM docker.pkg.github.com/melodyn/base-image/image:base

RUN add-apt-repository ppa:plt/racket
RUN apt-get install -yqq racket
RUN raco pkg install \
    --scope installation --batch \
    --no-docs --no-cache --no-trash \
    rackunit \
    review

WORKDIR /exercises-racket

COPY --from=docker.pkg.github.com/melodyn/base-image/image:base /tmp/basics/common/* ./
COPY . .
