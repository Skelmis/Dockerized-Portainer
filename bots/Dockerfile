FROM python:3.9-slim-bullseye

COPY . /bot
WORKDIR bot

RUN pip3 install -r requirements.txt

CMD python3 main.py