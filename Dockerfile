ARG REDIS_IMAGE_TAG=6.2.6-alpine

FROM redis:$REDIS_IMAGE_TAG

WORKDIR /app

COPY ./emischeduler-db/start.sh ./start.sh
RUN chmod +x ./start.sh

COPY ./emischeduler-db/conf/ ./conf/

ENV EMISCHEDULER_DB_PORT=32000 \
    EMISCHEDULER_DB_PASSWORD=password

EXPOSE 32000

ENTRYPOINT ["./start.sh"]
CMD []
