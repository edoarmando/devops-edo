FROM golang:1.25.4-alpine3.22

WORKDIR /app
COPY go.mod .
COPY main.go .

RUN go build -o simple-rest-api

EXPOSE 8080

CMD ["./simple-rest-api"]