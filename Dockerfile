# syntax=docker/dockerfile:1

FROM python:3.13.0rc2-slim

RUN apt-get update && \
    apt-get install nano git --yes

RUN --mount=type=bind,source=./requirements.txt,target=/tmp/requirements.txt pip install -r /tmp/requirements.txt --no-cache-dir
