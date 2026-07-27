## Run llama.cpp-server  

- Access terminal using Termix (from [dashboard](http://10.212.244.230:4000))
- Run the docker container


```bash
docker run \
  --name llama_server \
  -p 8500:8080 \
  -v "./models:/models" \
  ghcr.io/ggml-org/llama.cpp:server \
  --port 8080 \
  -n 512 \
  -m /models/qwen2.5-0.5b-instruct-q4_0.gguf \
  --temp 0.6 \
  --min-p 0.0 \
  --top-p 0.95 \
  --top-k 20
```

- You can customize this command accordingly.
- Open ui [click here](http://10.212.244.230:8500/)
