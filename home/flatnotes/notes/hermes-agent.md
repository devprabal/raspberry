I still cannot figure out why docker compose cannot reach telegram? Maybe network mode bridge requied?

So, for time being, I will run hermes agent as below command line:  
```bash
docker run -d   --name hermes   --restart unless-stopped   -v ~/.hermes:/opt/data   -p 8642:8642   nousresearch/hermes-agent gateway run
```

