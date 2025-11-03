# sample dockerfile for testing call-docker-build.yaml
#trivy:ignore:AVD-DS-0002 trivy:ignore:AVD-DS-0026
FROM alpine:3.22.2

RUN apk add --no-cache curl

WORKDIR /test

COPY . .

ENTRYPOINT ["curl"]

CMD ["--help"]
