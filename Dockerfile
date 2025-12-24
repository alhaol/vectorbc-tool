# Use Python 3.12 to satisfy pandas-ta and modern vectorbt requirements
FROM python:3.12-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv for fast dependency management
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Set the working directory
WORKDIR /app

# Copy configuration files
COPY pyproject.toml .

# Install dependencies using uv directly into the system python
# We use --system because we are inside a dedicated container
RUN uv pip install --system -r pyproject.toml

# Expose Jupyter port
EXPOSE 8888

# Command to run jupyter lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]