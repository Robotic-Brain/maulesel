FROM python:3.11-alpine
WORKDIR /usr/src/app
RUN apk add --no-cache git && \
    pip install --no-cache-dir --upgrade git+https://github.com/Garmelon/PFERD@v3.5.0 && \
    apk del --no-cache git
USER 1000:1000
