# docker-python-test
Simple Hello World Example for Flask / Gunicorn / Docker on Raspberry Pi.

* Clone repository: ```git clone git@github.com:benhoyle/docker-python-test.git```
* CD into repository: ```cd docker-python-test```
* Build Dockerfile: ```docker build . -t "hello_world"```
* Run Docker image: ```docker run "hello_world"```

Point your browser to the Pi's IP address at port 8000 (e.g. 192.168.1.10:8000).
