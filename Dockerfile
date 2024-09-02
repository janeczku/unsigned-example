FROM golang:alpine AS build-env
WORKDIR /app
COPY . .
RUN apk add git
RUN go get ./... && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o hello-world

FROM alpine
WORKDIR /app
COPY --from=build-env /app/hello-world /app/
CMD [ "/app/hello-world" ]
