FROM golang:1.9

# Set go bin which doesn't appear to be set already.
ENV GOBIN /go/bin

ARG WDIR="."

# build directories
RUN mkdir /app
RUN mkdir /go/src/app
ADD $WDIR /go/src/app
WORKDIR /go/src/app

# Go dep!
RUN go get -u github.com/golang/dep/...
RUN dep ensure

# Build my app
RUN go build -o /app/main .
CMD ["/app/main"]