FROM php:7.1-alpine

RUN mkdir -p /usr/local/bin && \
	curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony && \
	chmod a+x /usr/local/bin/symfony && \
	mkdir -p  /home/www/symfony

RUN echo "1db957a262d56f9f086a13b4ab7f0978bfd8ecea9c953ebadb1022546b898c95  /usr/local/bin/symfony" > /tmp/test
RUN sha256sum -c /tmp/test

WORKDIR /home/www/symfony
CMD /usr/local/bin/symfony
