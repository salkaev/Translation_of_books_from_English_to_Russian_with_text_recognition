#!/bin/bash

#many script to install a few depensencies

echo "install python3-pip"
sudo apt install python3-pip

python3 -m venv myenv

source myenv/bin/activate



echo "install transformers"
pip install transformers torch

echo "install huggingface-hub"
pip install huggingface-hub

echo "install facebook/mbart-large-50-many-to-many-mmt"
hf download facebook/mbart-large-50-many-to-many-mmt --local-dir ./mbart_model

echo "plis repeat terminal"