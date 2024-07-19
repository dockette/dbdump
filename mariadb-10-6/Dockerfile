FROM mariadb:10.6

ENV MARIADB_ROOT_PASSWORD=docker

RUN apt update && apt install wait-for-it

COPY /entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

CMD ["echo", "OK"]
