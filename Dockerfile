FROM dockercore/golang-cross:1.11.5@sha256:17a7e0f158521c50316a0d0c1ab1f6a75350b4d82e7ef03c98bcfbdf04feb4f3
ENV DISABLE_WARN_OUTSIDE_CONTAINER=1
ENV GOPATH=/root/go
ENV GOCACHE=/root/.cache/go-build
COPY scripts/ /cross/
