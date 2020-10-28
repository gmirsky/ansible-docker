FROM python:3.9.0-buster

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass 

RUN pip install pip --upgrade && \
    pip install ansible && \
    pip install paramiko

WORKDIR /work
