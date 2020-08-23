FROM python:3.8-alpine
LABEL maintainer="marceloreborn@gmail.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /salemana-project
WORKDIR /salemana-project
COPY ./salemana-project /salemana-project

RUN adduser -D user
USER user
