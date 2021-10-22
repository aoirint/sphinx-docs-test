# syntax=docker/dockerfile:1.3-labs
FROM python:3.9

ADD ./requirements.txt /tmp/
RUN <<EOF
    pip3 install -r /tmp/requirements.txt
EOF

WORKDIR /docs

