FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl git wget python3 python3-pip

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Install Python requirements
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Copy app files
COPY . /app
WORKDIR /app

# Make startup script executable
RUN chmod +x start.sh

EXPOSE 8080

# Run start script at container boot
CMD ["bash", "start.sh"]
