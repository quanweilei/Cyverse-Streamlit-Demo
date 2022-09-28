FROM ubuntu:latest
FROM python:3.9-slim

EXPOSE 8501
COPY /app /app

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    git 


RUN ["chmod", "+x", "./app.sh"]
 
ENTRYPOINT ["bash", "app.sh"]
