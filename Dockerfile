FROM golang:1.7

RUN mkdir -p /go/src/github.com/ubalogun-arista/grp
WORKDIR /go/src/github.com/ubalogun-arista/grp
COPY . /go/src/github.com/ubalogun-arista/grp

RUN make install

ENTRYPOINT ["grp"]
EXPOSE 2083/tcp
