FROM python:3.8.2-alpine3.10
MAINTAINER Praveen Sunkara

ENV PYTHONUNBUFFERED=1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app

WORKDIR /app

COPY ./app /app

RUN adduser -D user 
User user
