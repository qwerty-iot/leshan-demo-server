FROM openjdk:jre-alpine

COPY ./start.sh .
CMD ["sh", "./start.sh"]