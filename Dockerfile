FROM golang:1.14.1-alpine

WORKDIR /app

COPY example.go .
COPY go.mod .
COPY go.sum .
COPY README.md .

RUN go build example.go

CMD ["/app/example"]