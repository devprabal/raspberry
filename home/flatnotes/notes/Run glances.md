## Run glances

- Access terminal using Termix (from [dashboard](http://10.212.244.230:4000))
- Run the docker container


```bash
docker run \
  --name glances \
  --publish 61208:61208 \
  --volume /var/run/docker.sock:/var/run/docker.sock:ro \
  --env GLANCES_OPT=-w \
  --env PUID=1000 \
  --env PGID=1000 \
  --env TZ=Asia/Kolkata \
  --pid=host \
  --privileged \
  nicolargo/glances:latest
```

- You can customize this command accordingly.
- Open ui [click here](http://10.212.244.230:61208/)