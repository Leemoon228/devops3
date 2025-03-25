FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    build-essential \
    make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN cd ./cicd && make

CMD ["./bin/main"]
