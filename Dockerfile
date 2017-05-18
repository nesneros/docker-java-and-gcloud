FROM openjdk:8-jre-alpine

RUN apk add --no-cache curl python su-exec tini

ENV GCLOUD_VERSION=155.0.0

RUN curl -SsL https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-$GCLOUD_VERSION-linux-x86_64.tar.gz -o - | tar -zxf - \
    && /google-cloud-sdk/install.sh --additional-components kubectl

