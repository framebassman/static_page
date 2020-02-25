build:
	docker-compose \
		--project-directory=${PWD} \
		--project-name=page \
		-f docker-compose.yml \
		build

start:
	docker-compose \
		--project-directory=${PWD} \
		--project-name=page \
		-f docker-compose.yml \
		up --build
