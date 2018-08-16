FROM alpine:3.8
ADD cmd/server/main /
CMD ["/main"]
