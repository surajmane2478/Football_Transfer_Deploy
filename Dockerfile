FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl git wget python3 python3-pip

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Install Python requirements
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Copy rest of the app
COPY . /app
WORKDIR /app

# Make script executable
RUN chmod +x start.sh

EXPOSE 8080

# Run this after container boots
CMD ["bash", "start.sh"]
