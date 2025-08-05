FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl git wget python3 python3-pip

RUN curl -fsSL https://ollama.com/install.sh | sh

RUN ollama pull tinyllama

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . /app
WORKDIR /app

EXPOSE 8080

CMD ["bash", "start.sh"]
