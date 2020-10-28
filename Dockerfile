FROM python:latest

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass 

RUN pip install pip --upgrade && \
    pip install ansible && \
    pip install paramiko

WORKDIR /work
