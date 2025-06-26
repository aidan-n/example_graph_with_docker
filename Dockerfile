# Use a slim Python base image for a smaller image size
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR ./app

# Install system dependencies required by Matplotlib
# These might include build tools and libraries for font rendering, image formats, etc.
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    pkg-config \
    libfreetype6-dev \
    libpng-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy your requirements.txt file and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copy your application code into the container
COPY . .

# Command to run your application (adjust as needed)
CMD ["python", "bar_graph.py"]