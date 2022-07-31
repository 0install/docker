FROM debian:stable-slim

RUN apt-get update && apt-get install -y curl gnupg unzip bzip2 xz-utils libicu67

ARG ZEROINSTALL_VERSION
RUN curl https://get.0install.net/0install.sh | sh -s -- install local

RUN useradd user --create-home
USER user
RUN mkdir /home/user/bin
ENV PATH="${PATH}:/home/user/bin"

ENTRYPOINT ["0install"]
