FROM alpine

ENV \
  DAGGER_VERSION="v0.2.9"

RUN \
  apk --update add git curl ca-certificates bash tar gzip &&\
  rm -rf /var/cache/apk/*

RUN \
  echo "Install dagger" &&\
  curl -o- -L https://github.com/dagger/dagger/releases/download/${DAGGER_VERSION}/dagger_${DAGGER_VERSION}_linux_amd64.tar.gz | tar xvz -C /usr/local/bin --strip-components=0 &&\
  chmod +x /usr/local/bin/dagger