FROM php:7.3-fpm

RUN apt update && \
    apt install -y --no-install-recommends --no-install-suggests build-essential libmecab-dev

RUN mkdir -p /opt

COPY . /opt/mecab-lib

RUN cd /opt/mecab-lib && \
    chmod +x install-mecab.sh && \
    chmod +x install-php-mecab.sh && \
    ./install-mecab.sh && \
    ./install-php-mecab.sh 

RUN apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*