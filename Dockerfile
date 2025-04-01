FROM hexletbasics/base-image

RUN apt-get update && \
    apt-get install -y --no-install-recommends racket libssl-dev && \
    rm -rf /var/lib/apt/lists/*

RUN raco pkg install \
    --scope installation --batch \
    --no-docs --no-cache --no-trash \
    rackunit \
    review

WORKDIR /exercises-racket

COPY . .
