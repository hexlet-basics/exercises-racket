FROM hexletbasics/base-image

RUN add-apt-repository ppa:plt/racket
RUN apt-get install -yqq racket
RUN raco pkg install \
    --scope installation --batch \
    --no-docs --no-cache --no-trash \
    rackunit \
    review

WORKDIR /exercises-racket

COPY . .
