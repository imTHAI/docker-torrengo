FROM alpine:edge
LABEL maintainer="imTHAI <imTHAI@leet.la>"
LABEL description="torrengo under Alpine (Edge branch)"
# See https://github.com/juliensalinas/torrengo for more infos

RUN     apk update \
        && apk upgrade \
        && apk add --no-cache --virtual .build-deps git go \
        && apk add --no-cache python3 musl-dev nodejs \
        && pip3 install cfscrape \
        && pip3 install --upgrade pip \
        && go get github.com/juliensalinas/torrengo \
        && go build github.com/juliensalinas/torrengo \
        && mv torrengo /usr/bin \
        # Cleaning:
        && apk del .build-deps


WORKDIR /data

ENTRYPOINT ["torrengo"]
