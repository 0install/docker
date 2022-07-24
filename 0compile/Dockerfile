ARG ZEROPUBLISH_VERSION
FROM 0installnet/0publish:${ZEROPUBLISH_VERSION}

USER root
RUN apt-get update && apt-get install -y build-essential
USER user

ARG ZEROCOMPILE_VERSION
RUN 0install add 0compile https://apps.0install.net/0install/0compile.xml --version=${ZEROCOMPILE_VERSION}
ENTRYPOINT ["0compile"]
