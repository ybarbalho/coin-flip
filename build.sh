#!/usr/bin/env bash

# Instale bibliotecas do sistema necessárias antes do pip install
apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    libopenblas-dev \
    liblapack-dev \
    gfortran \
    pkg-config \
    git \
    && rm -rf /var/lib/apt/lists/*

# Continue com a instalação de dependências Python
pip install --upgrade pip
pip install -r requirements.txt
