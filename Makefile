.PHONY:	build push

build:
	docker build -t tkuchiki/varnish215 .

push:
	docker push tkuchiki/varnish215:latest
