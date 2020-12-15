# 1. Dockerfile content
#FROM paddlepaddle/paddle:latest-gpu-cuda9.0-cudnn7-dev
FROM paddlepaddle/paddle:latest-gpu-cuda10.0-cudnn7-dev

# Maintainer Information:
MAINTAINER Feiyun Zhu

# Install dependencies
#RUN ln -s /usr/bin/python3.5 /usr/bin/python
#RUN pip install --upgrade pip setuptools \
#    && ln -s /usr/bin/pip3 /usr/bin/pip \
#    && pip3 install gsutil \
#    && pip3 -r ./requirements.txt \
#    && mkdir -p   /app  /data

#RUN pip3 --use-feature=2020-resolver install -r  requirements.txt
RUN mkdir -p   /app  /data

WORKDIR   /app
EXPOSE    22

# 2. Build Dockerfile
# docker build  -t  cv/paddleocr:cuda10.0_cudnn7.0   .