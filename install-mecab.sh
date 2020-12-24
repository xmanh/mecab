#!/bin/sh

cd /opt/mecab-lib/mecab/mecab \
    && ./configure && make && make install \
    && ldconfig

cd /opt/mecab-lib/mecab/mecab-ipadic \
    && ./configure \
        --with-charset=utf8 \
        --with-mecab-config=/usr/local/bin/mecab-config \
    && make && make install \
    && ldconfig