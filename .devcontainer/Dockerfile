FROM python:3.12-slim

RUN apt-get update && \
    apt-get install -y git curl zstd build-essential && \
    rm -rf /var/lib/apt/lists/*


RUN useradd -m -s /bin/bash vscode
USER vscode

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/home/vscode/.local/bin:$PATH"

WORKDIR /workspace

