FROM alpine:3.13
RUN apk update &&\
    apk upgrade &&\
    apk --no-cache add curl &&\
    apk add --update --no-cache python3
