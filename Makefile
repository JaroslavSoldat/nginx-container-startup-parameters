IMAGE_NAME = my-webserver
CONTAINER_NAME = ${IMAGE_NAME}

default: build start logs

build:
	docker compose build

start:
	docker compose up --detach

logs:
	docker compose logs -f

stop:
	docker compose down

build-container:
	docker build -t ${IMAGE_NAME} .

try-container:
	docker run --rm -it ${IMAGE_NAME} bash
