#build:
CGO_ENABLED=0 GOOS=linux go build -o website-controller -a pkg/website-controller.go

#build image
docker build -t viettu123/website-controller .

#push image
docker push viettu123/website-controller:latest
