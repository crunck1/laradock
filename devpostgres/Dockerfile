ARG POSTGRES_VERSION=alpine
FROM postgres

COPY data.tar .
RUN tar -xf data.tar -C /var/lib/postgresql/ && rm -f data.tar

CMD ["postgres"]

EXPOSE 5432
