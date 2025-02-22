FROM golang:1.23 as app
RUN mkdir -p /yopass
WORKDIR /yopass
COPY . .
RUN go build ./cmd/yopass-ng

FROM gcr.io/distroless/base
COPY --from=app /yopass/yopass-ng /
ENTRYPOINT ["/yopass-ng"]
