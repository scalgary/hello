#!/bin/bash

echo "🚀 Starting devcontainer setup..."
echo "📍 Current directory: $(pwd)"
echo "👤 Current user: $(whoami)"

if [ ! -f "uv.lock" ]; then
    echo "📦 No uv.lock found - initializing project..."
    uv init .
    uv add  pandas 
    

    echo "✅ Project initialized!"
else
    echo "📦 Found uv.lock - syncing..."
    uv sync
    echo "✅ Dependencies synced!"
fi

echo "export QUARTO_PYTHON=/workspaces/testc/.venv/bin/python" >> ~/.bashrc
echo ""
echo "🎉 Setup complete!"
