FROM golang:1.9

# Set go bin which doesn't appear to be set already.
ENV GOBIN /go/bin

ARG WDIR="."

# build directories
RUN mkdir /app
RUN mkdir /go/src/app
ADD $WDIR /go/src/app
WORKDIR /go/src/app

# Go glide!
RUN go get -u github.com/Masterminds/glide
RUN glide install

# Build app
RUN go build -o /app/main .
CMD ["/app/main"]