# symfony3-docker

i want to use symfony, but dont want to install php


Example
=======


```
docker build -t hloeffler/symfony3 .
docker run --rm -v $(pwd):/home/www/symfony -it hloeffler/symfony3  symfony new test
docker run --rm -v $(pwd):/home/www/symfony -p 127.0.0.1:8000:8000 -it hloeffler/symfony3  php test/bin/console server:run 0.0.0.0:8000

```
