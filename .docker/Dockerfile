# syntax=docker/dockerfile:1.3-labs
FROM python:3.9

RUN <<EOF
    apt-get update
    apt-get install -y \
        gosu
EOF

ADD ./requirements.txt /tmp/
RUN <<EOF
    pip3 install -r /tmp/requirements.txt
EOF

WORKDIR /docs

