FROM python:latest

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    graphviz \
    fonts-noto-cjk \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip install pip --upgrade \
  && pip install diagrams

RUN mkdir /src
WORKDIR /src

ENTRYPOINT [ "python" ]
