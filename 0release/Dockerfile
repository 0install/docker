ARG ZEROPUBLISH_VERSION
FROM 0installnet/0publish:${ZEROPUBLISH_VERSION}

ARG ZERORELEASE_VERSION
RUN 0install add 0release https://apps.0install.net/0install/0release.xml --version=${ZERORELEASE_VERSION}
ENTRYPOINT ["0release"]
