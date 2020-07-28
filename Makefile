all: authorizer

setup:
	@echo Helloworld

authorizer:
	go build -o bin/authorizer ./apps/authorizer

test:
	@go test -c -o integration.test ./tests
	@./integration.test
	@rm integration.test 

proto:
	protoc --gogofast_out=. ./protocol/pb.proto
