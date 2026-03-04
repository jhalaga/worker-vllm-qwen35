FROM vllm/vllm-openai:qwen3_5

WORKDIR /src

RUN pip install --no-cache-dir runpod

RUN curl -sfL https://raw.githubusercontent.com/runpod-workers/worker-vllm/main/src/handler.py -o /src/handler.py && \
    curl -sfL https://raw.githubusercontent.com/runpod-workers/worker-vllm/main/src/engine.py -o /src/engine.py && \
    curl -sfL https://raw.githubusercontent.com/runpod-workers/worker-vllm/main/src/utils.py -o /src/utils.py

CMD ["python3", "-u", "/src/handler.py"]
