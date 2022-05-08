# syntax=docker/dockerfile:1
FROM python:3.8-slim-bullseye as common-base

FROM common-base as builder
RUN apt-get update && apt-get install -y build-essential python3-dev


RUN mkdir -p /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-warn-script-location -r /app/requirements.txt

COPY . /app/
WORKDIR /app

RUN chmod +x docker-entrypoint.sh
CMD ["/app/docker-entrypoint.sh"]