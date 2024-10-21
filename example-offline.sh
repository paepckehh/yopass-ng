# !/bin/sh:wq
go mod tidy -v
go run cmd/yopass-multilang/main.go --address="127.0.0.1" --port="8080" --memcached="localhost:11211"
