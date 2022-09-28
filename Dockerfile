FROM ubuntu:latest
FROM python:3.9-slim

EXPOSE 8501
COPY /app /app

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /app
RUN ["chmod", "+x", "./app.sh"]

ENV git=link
 
ENTRYPOINT ["bash", "app.sh"]
