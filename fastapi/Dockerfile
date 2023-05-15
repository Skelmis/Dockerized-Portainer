FROM python:3.10-slim

WORKDIR /code
COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./entrypoint.sh /code/entrypoint.sh
COPY ./log_conf.yaml /code/log_conf.yaml
COPY ./garven /code/garven
COPY ./static /code/static
COPY ./templates /code/templates
COPY ./main.py /code/main.py

RUN chmod +x /code/entrypoint.sh
ENTRYPOINT ["/code/entrypoint.sh"]

