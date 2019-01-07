FROM ubuntu:16.04

ENV PACKER_VERSION 1.3.3

LABEL PACKER_VERSION=${PACKER_VERSION}

RUN apt-get update && apt-get install software-properties-common curl unzip awscli python-pip -y

RUN pip install --upgrade pip
RUN pip install ansible paramiko

RUN curl -O https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip \
    && unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/local/bin/ \
    && rm packer_${PACKER_VERSION}_linux_amd64.zip
