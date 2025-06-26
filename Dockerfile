FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR ./app

# Install system dependencies required by Matplotlib
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    pkg-config \
    libfreetype6-dev \
    libpng-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements.txt file into container
COPY requirements.txt .
# Install dependencies with requirement.txt as a dependency
RUN pip install --no-cache-dir -r requirements.txt
# Copy application code into container
COPY . .

# Run application
CMD ["python", "bar_graph.py"]