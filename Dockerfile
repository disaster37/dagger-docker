FROM alpine

ENV \
  DAGGER_VERSION="v0.2.9"

RUN \
  echo "Install dagger" &&\
  curl -o- -L https://github.com/dagger/dagger/releases/download/${DAGGER_VERSION}/dagger_${DAGGER_VERSION}_linux_amd64.tar.gz | tar xvz -C /usr/local/bin --strip-components=0 &&\
  chmod +x /usr/local/bin/dagger