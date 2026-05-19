# docker-python-utils

Docker image with Python 3.12 and essential utilities for development and automation.

## Overview

A lightweight Docker image based on `python:3.12-slim` with pre-installed tools commonly needed for Python development and system operations.

## Included Tools

- **Python 3.12** - Latest stable Python version
- **bash** - Shell for scripting
- **curl** - HTTP client for API requests
- **git** - Version control
- **jq** - JSON query processor
- **ca-certificates** - SSL/TLS certificates

## Installation

### Pull from Docker Hub

```bash
docker pull orvalle/python-utils:latest
```

### Build Locally

```bash
docker build -t docker-python-utils .
```

## Usage

### Run Interactive Shell

```bash
docker run -it orvalle/python-utils bash
```

### Run Python Script

```bash
docker run -v $(pwd):/app orvalle/python-utils python /app/script.py
```

### Run with Custom Command

```bash
docker run orvalle/python-utils python -c "print('Hello from Python 3.12')"
```

## Automatic Docker Hub Publishing

This repository uses **GitHub Actions** to automatically build and push the Docker image to Docker Hub on every push to the `main` branch.

### Configuration

To enable automatic image publishing, set these repository secrets:

1. Go to **Settings** → **Secrets and variables** → **Actions**
2. Add the following secrets:
   - `DOCKERHUB_USERNAME`: Your Docker Hub username
   - `DOCKERHUB_TOKEN`: Docker Hub access token (create in [Account Settings > Security](https://hub.docker.com/settings/security))

### Workflow Details

The GitHub Actions workflow:
- Triggers on push to `main` branch
- Builds the Docker image
- Pushes to `orvalle/python-utils:latest`
- Tags with commit SHA: `orvalle/python-utils:<commit-sha>`
- Uses Docker layer caching for faster builds

## Image Tags

- `latest` - Latest stable build from `main` branch
- `<commit-sha>` - Specific build identified by commit hash

## License

MIT