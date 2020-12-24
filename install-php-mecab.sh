#!/bin/sh

OPT_MECAB=$(which mecab-config)

OPT_PHP=$(which php-config)

cd /opt/mecab-lib/php-mecab/mecab && \
    phpize && \
    ./configure \
        --with-mecab=$OPT_MECAB \
        --with-php-config=$OPT_PHP 

make && make install

echo "extension=mecab.so" > $PHP_INI_DIR/conf.d/mecab.ini