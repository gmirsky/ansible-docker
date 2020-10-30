build:
	docker build -t ansible-docker:latest .
run:
	docker run ansible-docker --version
clean:
	docker stop ansible-docker || true
	docker rm ansible-docker || true
	docker rmi ansible-docker:latest
