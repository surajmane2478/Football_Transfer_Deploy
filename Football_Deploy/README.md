# ⚽ Football Assistant Chatbot

This app predicts football transfer fees and includes a chatbot powered by LLM (Ollama LLaMA3).

## 🌐 Features
- Transfer fee prediction using ML model
- Football chatbot using Ollama's local API

## 🚀 Run Instructions

1. Clone the repo:
```
git clone https://github.com/YOUR_USERNAME/football-assistant-chatbot.git
```

2. Build and run Docker container:
```
docker build -t football-assistant .
docker run -p 8080:8080 football-assistant
```

Make sure you have Docker and enough memory to run Ollama with LLaMA3.
