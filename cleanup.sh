#!/bin/bash

# Chatbot Cleanup Script
echo "==================================="
echo "    Chatbot Cleanup Menu"
echo "==================================="
echo "1) Remove cached models only (~22GB)"
echo "2) Remove conda environment only"
echo "3) Remove both models and environment"
echo "4) Exit"
echo "==================================="

while true; do
    read -p "Select cleanup option (1-4): " choice
    case $choice in
        1)
            echo "Removing cached models..."
            if [ -d "$HOME/.cache/huggingface/hub" ]; then
                rm -rf "$HOME/.cache/huggingface/hub"
                echo "✓ Models removed successfully"
            else
                echo "No cached models found"
            fi
            break
            ;;
        2)
            echo "Removing conda environment..."
            if command -v conda &> /dev/null; then
                conda env remove -n chatbot_env -y
                echo "✓ Environment removed successfully"
            else
                echo "Conda not found"
            fi
            break
            ;;
        3)
            echo "Removing models and environment..."
            if [ -d "$HOME/.cache/huggingface/hub" ]; then
                rm -rf "$HOME/.cache/huggingface/hub"
                echo "✓ Models removed"
            fi
            if command -v conda &> /dev/null; then
                conda env remove -n chatbot_env -y
                echo "✓ Environment removed"
            fi
            echo "✓ Cleanup complete"
            break
            ;;
        4)
            echo "Cleanup cancelled"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select 1-4."
            ;;
    esac
done