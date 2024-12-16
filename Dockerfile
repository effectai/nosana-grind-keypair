FROM nvidia/opencl:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

RUN apt-get install -y \
    python3-pyopencl \
    python3-nacl

RUN pip3 install base58 click
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

COPY opencl /app/opencl
COPY main.py /app

WORKDIR /app
