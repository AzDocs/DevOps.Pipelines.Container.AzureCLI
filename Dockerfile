FROM alpine:3.9

ENV AZ 2.25.0

RUN apk add --no-cache curl tar openssl sudo bash jq python3

RUN apk add -U python3 bash && \
    apk add --virtual=build gcc python3-dev musl-dev libffi-dev openssl-dev make linux-headers && \
    pip3 install azure-cli==${AZ} && \
    ln -s /usr/bin/python3 /usr/bin/python
