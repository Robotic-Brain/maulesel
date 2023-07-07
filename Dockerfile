FROM python:alpine
WORKDIR /usr/src/app
RUN apk add --no-cache git && \
    pip install --no-cache-dir --upgrade git+https://github.com/Garmelon/PFERD@latest && \
    apk del --no-cache git
USER 1000:1000
