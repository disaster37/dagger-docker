FROM chainguard/wolfi-base

ENV \
  DAGGER_VERSION="v0.16.1"

RUN \
  apk --update add git curl ca-certificates bash gzip &&\
  rm -rf /var/cache/apk/*

RUN \
  echo "Install dagger" &&\
  curl -o- -L https://github.com/dagger/dagger/releases/download/${DAGGER_VERSION}/dagger_${DAGGER_VERSION}_linux_amd64.tar.gz | tar xvz -C /usr/bin --strip-components=0 &&\
  chmod +x /usr/bin/dagger
