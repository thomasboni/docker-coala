FROM python:3.5.7-alpine3.10

WORKDIR /code
COPY run.sh ./run.sh

RUN apk add gcc \
            g++ \
            musl-dev \
            libffi-dev  \
            libxml2-dev \
            libxslt-dev \
            python-dev \
            jpeg-dev \
            bash

RUN pip install coala-quickstart==0.4.0 \
                coala-bears==0.12.0.dev20171110210444 \
                coala==0.12.0.dev20180101025653 \
                packaging~=16.8 \
                remark==1.7.6 \
                travis==0.0.3

CMD ["bash", "run.sh"]
