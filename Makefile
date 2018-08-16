docker: main
	docker build -t oauth-server .

main: ./cmd/server/main.go
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o ./cmd/server/main ./cmd/server/main.go

clean:
	rm ./cmd/server/main