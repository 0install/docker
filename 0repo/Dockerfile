ARG ZEROWATCH_VERSION
FROM 0installnet/0watch:${ZEROWATCH_VERSION}

USER root
RUN apt-get update && apt-get install -y git-core
USER user

ARG ZEROCOMPILE_VERSION
RUN 0install add 0repo https://apps.0install.net/0install/0repo.xml --version=${ZEROREPO_VERSION}
ENTRYPOINT ["0repo"]
