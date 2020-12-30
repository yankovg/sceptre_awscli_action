FROM python:3.8-slim

ADD entrypoint.sh /entrypoint.sh

RUN pip3 install awscli

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
