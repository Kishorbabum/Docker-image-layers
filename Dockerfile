# Base layer
FROM ubuntu:20.04

# Update package manager and install curl
RUN apt-get update && apt-get install -y curl

# Install Python
RUN apt-get install -y python3 python3-pip

# Copy application files
COPY app/ /app

# Set working directory
WORKDIR /app

# Install dependencies
RUN pip3 install -r requirements.txt

# Define default command
CMD ["python3", "app.py"]

