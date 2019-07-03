FROM maeteno/swoole:7.2

LABEL maintainer="Alan <ssisoo@live.cn>"

RUN apt-get update -y \
&& apt-get install -y gcc g++ autoconf make file bison curl git zip unzip 

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
&& php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
&& php composer-setup.php --filename=composer --install-dir=/bin \
&& php -r "unlink('composer-setup.php');"

CMD ["/bin/sh"]
