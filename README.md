# symfony3-docker

i want to use symfony, but dont want to install php

* symfony3
* php7.1


Example
=======


```
docker build -t hloeffler/symfony3 .
docker run --rm -v $(pwd):/home/www/symfony -it hloeffler/symfony3  symfony new test
docker run --rm -v $(pwd):/home/www/symfony -p 127.0.0.1:8000:8000 -it hloeffler/symfony3  php test/bin/console server:run 0.0.0.0:8000

# if you run docker as user and want non-root permissions:
docker run --rm -v $(pwd):/home/www/symfony -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -u $( id -u $USER ):$( id -g $USER )  -it hloeffler/symfony3  symfony new test

```
