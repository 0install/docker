ARG ZEROPUBLISH_VERSION
FROM 0installnet/0publish:${ZEROPUBLISH_VERSION}

ARG ZEROTEMPLATE_VERSION
RUN 0install add 0template https://apps.0install.net/0install/0template.xml --version=${ZEROTEMPLATE_VERSION}
ENTRYPOINT ["0template"]
