FROM python:3.5.7-alpine3.10

RUN apk add gcc \
            g++ \
            musl-dev \
            libffi-dev  \
            libxml2-dev \
            libxslt-dev \
            python-dev \
            jpeg-dev

RUN pip install coala-quickstart==0.4.0 \
                packaging~=16.8 \
                remark==1.7.6 \
                travis==0.0.3

