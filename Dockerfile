FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y python3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app
RUN chmod +x /app/soul
ENTRYPOINT ["python3", "main.py"]
