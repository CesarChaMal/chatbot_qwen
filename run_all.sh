#!/bin/bash

# Interactive Chatbot Launcher
echo "==================================="
echo "    Chatbot Selection Menu"
echo "==================================="
echo "1) Qwen 2-1.5B (Fast, basic responses)"
echo "2) DeepSeek R1-Distill-Qwen-1.5B (Reasoning)"
echo "3) DeepSeek R1-Distill-Llama-8B (Quantized, advanced)"
echo "4) Exit"
echo "==================================="

while true; do
    read -p "Select chatbot (1-4): " choice
    case $choice in
        1)
            echo "Launching Qwen chatbot..."
            ./run_qwen.sh
            break
            ;;
        2)
            echo "Launching DeepSeek chatbot..."
            ./run_deepseek.sh
            break
            ;;
        3)
            echo "Launching Quantized DeepSeek chatbot..."
            ./run_quantization.sh
            break
            ;;
        4)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select 1-4."
            ;;
    esac
done