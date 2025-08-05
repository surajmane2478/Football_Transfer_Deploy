#!/bin/bash

echo "🔁 Starting Ollama server..."
ollama serve &

# Wait for Ollama to boot
sleep 5

echo "⬇️ Pulling TinyLlama model..."
ollama pull tinyllama

echo "🚀 Launching Streamlit app..."
streamlit run app.py --server.port 8080 --server.enableCORS false
