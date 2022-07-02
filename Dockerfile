FROM postgres
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB bookshelf
COPY bookshelf.sql /docker-entrypoint-initdb.d/
# make commands like ps available
RUN apt-get update && apt-get install -y procps && rm -rf /var/lib/apt/lists/*
