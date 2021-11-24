FROM adoptopenjdk/openjdk8:alpine

WORKDIR /server

CMD [ "sh", "run.sh" ]
