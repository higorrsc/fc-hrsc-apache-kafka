FROM golang:1.23.2

WORKDIR /go/src
ENV PATH="/go/bin:${PATH}"

RUN apt-get update && \
  apt-get install build-essential librdkafka-dev -y

CMD [ "tail", "-f", "/dev/null" ]