FROM hexletbasics/base-image

RUN apt-get update && apt-get install -y racket libssl-dev
RUN raco pkg install \
    --scope installation --batch \
    --no-docs --no-cache --no-trash \
    rackunit \
    review

WORKDIR /exercises-racket

COPY . .
