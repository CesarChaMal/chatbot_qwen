#!/bin/bash

# DeepSeek Chatbot Launcher
echo "Starting DeepSeek Chatbot..."

# Check if conda is available
if command -v conda &> /dev/null; then
    # Create/activate conda environment
    if conda env list | grep -q "chatbot_env"; then
        echo "Activating existing conda environment..."
        source activate chatbot_env
    else
        echo "Creating new conda environment..."
        conda create -n chatbot_env python=3.9 -y
        source activate chatbot_env
        pip install -r requirements.txt
    fi
else
    echo "Conda not found. Using system Python..."
    pip install -r requirements.txt
fi

# Run the chatbot
python main_deepseek.py