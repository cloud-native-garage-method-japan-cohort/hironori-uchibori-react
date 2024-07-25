IMAGE_NAME := my-react-app-image
CONTAINER_NAME := my-react-app
HOST_PORT := 3000
CONTAINER_PORT := 3000

all: build run

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -it --name $(CONTAINER_NAME) -p $(HOST_PORT):$(CONTAINER_PORT) $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

clean: stop
	docker rmi $(IMAGE_NAME)

.PHONY: all build run clean stop