build:
	docker build -t ansible:latest .
clean:
	docker stop ansible || true
	docker rm ansible || true
	docker rmi ansible:latest