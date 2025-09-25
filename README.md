# Chatbot Qwen
Create a Better Chatbot with Qwen + DeepSeek 1.5B Qwen Chatbot

## Quick Start (Recommended)

### Prerequisites
- Anaconda/Miniconda installed
- Git Bash (Windows) / Terminal (Linux/macOS)

### Run Qwen Chatbot
```bash
git clone https://github.com/MariyaSha/chatbot_qwen.git
cd chatbot_qwen
./run_qwen.sh
```

### Run DeepSeek Chatbot
```bash
./run_deepseek.sh
```

### Run Quantized DeepSeek Chatbot
```bash
./run_quantization.sh
```

### Interactive Launcher (All Options)
```bash
./run_all.sh
```

## Manual Setup

### Create Environment
```bash
conda create -n chatbot_env python=3.9 -y
conda activate chatbot_env
pip install -r requirements.txt
```

### Run Chatbots
```bash
# Qwen
python main.py

# DeepSeek
python main_deepseek.py

# Quantized DeepSeek
python main_quantization.py
```

## Docker Setup (Alternative)

### Requirements
Download <a href="https://docs.docker.com/desktop/" target="_blank">Docker Desktop</a> and make sure the engine is running.

### Run Qwen with Docker
```bash
docker build -t chatbot .
docker run -it --gpus=all chatbot
```

### Run DeepSeek with Docker
1. Edit Dockerfile: change `COPY main.py ./` to `COPY main_deepseek.py ./`
2. Run the Docker commands above

## Video Instructions
<a href="https://youtube.com/shorts/YWUvD6qe56g"><img src="https://github.com/user-attachments/assets/fa2fe923-4622-4e4d-9e01-a338e77afbc1" width="600px"></a>

## Cleanup

### Remove Downloaded Models
Models are cached in:
- **Windows**: `C:\Users\{username}\.cache\huggingface\hub\`
- **Linux/macOS**: `~/.cache/huggingface/hub/`

### Interactive Cleanup Script
```bash
./cleanup.sh
```

### Manual Cleanup
```bash
# Remove all cached models
rm -rf ~/.cache/huggingface/hub/

# Remove conda environment
conda env remove -n chatbot_env
```

### Model Sizes
- Qwen2-1.5B: ~3GB
- DeepSeek-R1-Distill-Qwen-1.5B: ~3GB
- DeepSeek-R1-Distill-Llama-8B: ~16GB

## Credits
This tutorial uses the <a href="https://github.com/QwenLM/Qwen" target="_blank">Qwen Large Language Model</a>.
