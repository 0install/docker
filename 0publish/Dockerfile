ARG ZEROINSTALL_VERSION
FROM 0installnet/0install:${ZEROINSTALL_VERSION}

USER root
RUN apt-get update && apt-get install -y python3 libcurl3-gnutls
USER user

ARG ZEROPUBLISH_VERSION
RUN 0install add 0publish https://apps.0install.net/0install/0publish.xml --version=${ZEROPUBLISH_VERSION}
ENTRYPOINT ["0publish"]
