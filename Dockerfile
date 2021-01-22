FROM python:3.7-alpine

COPY entrypoint /entrypoint

RUN adduser -D -u 54000 radio && \
        apk update && \
        apk add git gcc musl-dev && \
        cd /opt && \
        git clone https://github.com/hacknix/freedmr && \
        cd /opt/freedmr && \
        pip install --no-cache-dir -r requirements.txt && \
        apk del git gcc musl-dev && \
        chown -R radio: /opt/freedmr

EXPOSE 54000

USER radio

ENTRYPOINT [ "/entrypoint" ]
