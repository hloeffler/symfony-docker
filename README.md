# symfony-docker

i want to use symfony, but dont want to install php

* symfony
* php7.1

Dockerhub
=========
`docker pull hloeffler/symfony`
* [hub.docker.com/r/hloeffler/symfony](https://hub.docker.com/r/hloeffler/symfony/)


Example
=======


```
docker build -t hloeffler/symfony .
docker run --rm -v $(pwd):/home/www/symfony -it hloeffler/symfony  symfony new test
docker run --rm -v $(pwd):/home/www/symfony -p 127.0.0.1:8000:8000 -it hloeffler/symfony  php test/bin/console server:run 0.0.0.0:8000

# if you run docker as user and want non-root permissions:
docker run --rm -v $(pwd):/home/www/symfony -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -u $( id -u $USER ):$( id -g $USER )  -it hloeffler/symfony  symfony new test

```

