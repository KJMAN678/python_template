FROM python:3.13-slim-bookworm
# e.g., using a hash from a previous release
COPY --from=ghcr.io/astral-sh/uv:0.10.2 /uv /uvx /bin/

# Sync the project into a new environment, using the frozen lockfile
WORKDIR /app/backend
COPY . /app/backend
RUN uv sync --dev
