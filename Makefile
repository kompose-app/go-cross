all:

main:
	docker build -t docker.direct/go-cross -f Dockerfile .

mod: main
	docker build -t docker.direct/go-cross:mod -f mod/Dockerfile .

build: main
	docker build -t docker.direct/go-cross:build -f build/Dockerfile .

images: main mod build

deploy: main mod build
	docker push docker.direct/go-cross
	docker push docker.direct/go-cross:mod
	docker push docker.direct/go-cross:build

.PHONY: main mod build push
