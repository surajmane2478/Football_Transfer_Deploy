#!/bin/bash
ollama serve &
sleep 5
ollama run tinyllama &
streamlit run app.py --server.port 8080 --server.enableCORS false
