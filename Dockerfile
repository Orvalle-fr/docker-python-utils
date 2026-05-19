FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    curl \
    ca-certificates \
    jq \
    git \
  && rm -rf /var/lib/apt/lists/*

CMD ["bash"]