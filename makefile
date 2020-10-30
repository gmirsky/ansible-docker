build:
	docker build -t ansible:latest .
run:
	docker run ansible --version
clean:
	docker stop ansible || true
	docker rm ansible || true
	docker rmi ansible:latest
