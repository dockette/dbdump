DOCKER_IMAGE=dockette/dbdump
DOCKER_VERSION?=mariadb-11-8
DOCKER_TAG?=${DOCKER_VERSION}
DOCKER_VERSIONS=mariadb-10-2 mariadb-10-4 mariadb-10-5 mariadb-10-6 mariadb-10-11 mariadb-11-1 mariadb-11-2 mariadb-11-4 mariadb-11-5 mariadb-11-7 mariadb-11-8


.PHONY: build
build:
	docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_VERSION}/

.PHONY: test
test:
	docker run --rm ${DOCKER_IMAGE}:${DOCKER_TAG} mysqldump --version
	docker run --rm ${DOCKER_IMAGE}:${DOCKER_TAG} mariadb-dump --version
	docker run --rm ${DOCKER_IMAGE}:${DOCKER_TAG} mariadb --version

.PHONY: run
run:
	docker run --rm -it ${DOCKER_IMAGE}:${DOCKER_TAG}

.PHONY: build-all
build-all:
	for version in ${DOCKER_VERSIONS}; do ${MAKE} DOCKER_VERSION=$$version DOCKER_TAG=$$version build; done

.PHONY: test-all
test-all:
	for version in ${DOCKER_VERSIONS}; do ${MAKE} DOCKER_VERSION=$$version DOCKER_TAG=$$version test; done

.PHONY: ${DOCKER_VERSIONS}
${DOCKER_VERSIONS}:
	${MAKE} DOCKER_VERSION=$@ DOCKER_TAG=$@ build test
