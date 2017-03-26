# Pull base image.
FROM resin/rpi-raspbian

USER root

# Install python
RUN apt-get update && \
    apt-get -qy install ca-certificates python python-pip && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get -qy clean all
    
ENV INSTALL_PATH /website
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD gunicorn --bind 0.0.0.0:8000 "hello_world:create_app()"
