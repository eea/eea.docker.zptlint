FROM python:2-alpine
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV ZPTLINT_VERSION=0.2.4

RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
 && apk add --no-cache --virtual .run-deps git \
 && pip install zptlint==$ZPTLINT_VERSION \
 && apk del .build-deps \
 && mkdir -p /code

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["zptlint"]
