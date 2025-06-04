#!/bin/bash

echo "🔍 Checking environment..."
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 not found. Please install Python 3.10+"
    exit 1
fi

echo "📦 Installing dependencies..."
pip3 install -r requirements.txt

echo ""
echo "🚀 Ultimate Advanced Scraper Launcher"
echo "1. Offline GUI (Tkinter)"
echo "2. Online Dashboard (Flask)"
read -p "Choose a mode [1/2]: " choice

if [ "$choice" == "1" ]; then
    echo "🔁 Starting Offline GUI..."
    python3 gui_tkinter.py
elif [ "$choice" == "2" ]; then
    echo "🌐 Starting Online Dashboard..."
    python3 web_dashboard.py
else
    echo "❌ Invalid choice"
fi