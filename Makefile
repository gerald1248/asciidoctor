NAME = "asciidoctor"
GROUP = "gerald1248"
TAG = "latest"

build:
	docker build -t $(NAME) .
push:
	docker tag $(NAME) $(GROUP)/$(NAME):$(TAG)
	docker push $(GROUP)/$(NAME):$(TAG)
test:
	./Dockerfile_test
