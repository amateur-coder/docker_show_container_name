Run:
docker-compose up --scale node=5
or
docker-compose up --build --scale node=5

Connect to image:
docker run --rm -it --entrypoint=/bin/sh node

