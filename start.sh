#!/bin/bash

echo "🔁 Starting Ollama server..."
ollama serve &

# Wait a bit for server to fully start
sleep 5

echo "⬇️ Pulling TinyLlama model..."
ollama pull tinyllama

echo "🚀 Starting Streamlit app..."
streamlit run app.py --server.port 8080 --server.enableCORS false

