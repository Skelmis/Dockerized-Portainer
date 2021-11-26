# syntax=docker/dockerfile:1
FROM python:3.8-slim-bullseye as common-base

FROM common-base as builder
RUN apt-get update && apt-get install -y build-essential python3-dev

FROM common-base

RUN apt -y update && apt -y upgrade && apt install -y nodejs && apt install -y npm

RUN mkdir -p /app
COPY . /app/
ARG SECRET_KEY="Docker_builds"

RUN sh -c 'pip install --no-warn-script-location -r /app/requirements.txt'
RUN sh -c 'cd /app && python manage.py collectstatic --no-input'
RUN sh -c "chmod +x /app/docker-entrypoint.sh"
ENTRYPOINT ["/app/docker-entrypoint.sh"]