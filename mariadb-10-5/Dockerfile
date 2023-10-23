FROM mariadb:10.5

ENV MARIADB_ROOT_PASSWORD=docker

RUN apt update && apt install wait-for-it

COPY /entrypoint.sh /usr/local/bin/entrypoint.sh


CMD ["echo", "OK"]
