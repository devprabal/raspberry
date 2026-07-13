POST request to openrouter for LLM completion.
Find the key in `~/.bashrc` on eiji okumac'ra.

```bash
 curl https://openrouter.ai/api/v1/chat/completions \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENROUTER_API_KEY" \
    -d '{
    "model": "qwen/qwen3.6-flash",
    "messages": [
      {
        "role": "user",
        "content": "How many r`s are in the word `strawberry?`"
      }
    ],
    "reasoning": {
      "enabled": true
    },
    "max_tokens": 4096
}' | jq
```
