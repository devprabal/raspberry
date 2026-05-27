## compose up

```bash
docker compose up -d --build
# build only when docker-compose.yml changes
```

## compose stop

```bash
docker compose stop
```

## compose remove volumes, etc

```bash
docker compose down
```

## docker remove image

```bash
docker rmi hello-world
```

## docker remove container

```bash
docker ps -a
# list all containers whether or not running
docker rm <container-id>
# or
docker rm <container-name>
```

## docker start

```bash
docker start glances
```

or

```bash
docker run -d \
  --name glances \
  -p 61208:61208 \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -e GLANCES_OPT=-w \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Kolkata \
  --pid host \
  --privileged \
  nicolargo/glances:latest
```

