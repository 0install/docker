ARG ZEROTEMPLATE_VERSION
FROM 0installnet/0template:${ZEROTEMPLATE_VERSION}

ARG ZEROWATCH_VERSION
RUN 0install add 0watch https://apps.0install.net/0install/0watch.xml --version=${ZEROWATCH_VERSION}
ENTRYPOINT ["0watch"]
