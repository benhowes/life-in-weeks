.PHONY: docker-build start stop

CONTAINER_NAME = life-in-weeks-hugo
IMAGE_NAME = life-in-weeks-hugo

docker-build:
	docker build -t $(IMAGE_NAME) .

start: docker-build
	docker run --rm \
		--name $(CONTAINER_NAME) \
		-v ${PWD}:/src \
		-p 1313:1313 \
		$(IMAGE_NAME)
	@echo "Hugo server started at http://localhost:1313"

stop:
	docker stop $(CONTAINER_NAME)

logs:
	docker logs -f $(CONTAINER_NAME)
