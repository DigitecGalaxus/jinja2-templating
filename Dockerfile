FROM python:buster
RUN pip3 install Jinja2 j2cli && apt-get -qq update && apt-get -qq install -y jq
WORKDIR /tmp

