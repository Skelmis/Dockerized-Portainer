# syntax=docker/dockerfile:1
FROM python:3.8-slim-bullseye as common-base

FROM common-base as builder
RUN apt-get update && apt-get install -y build-essential python3-dev

FROM common-base

RUN mkdir -p /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-warn-script-location -r /app/requirements.txt

COPY . /app/
ARG SECRET_KEY="Docker_builds"

RUN cd /app && python manage.py collectstatic --no-input
RUN chmod +x /app/docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]
