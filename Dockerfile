FROM hexletbasics/base-image

WORKDIR /exercises-racket

RUN apt-get update && \
    apt-get install -y --no-install-recommends racket libssl-dev && \
    rm -rf /var/lib/apt/lists/*

# RUN raco pkg install \
#     --scope installation --batch \
#     --no-docs --no-cache --no-trash \
#     rackunit \
#     review

# RUN git clone https://github.com/racket/rackunit.git /tmp/rackunit \
#     && raco pkg install /tmp/rackunit

# git clone https://github.com/Bogdanp/racket-review.git /tmp/racket-review
# rack pkg install /tmp/racket-review
# raco pkg install /tmp/racket-review

COPY . .
