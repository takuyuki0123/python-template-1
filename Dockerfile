FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

WORKDIR /workspace
COPY uv.lock .
COPY pyproject.toml .

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        git && \
    rm -rf /var/lib/apt/lists/*

RUN uv sync && uv run pre-commit install
