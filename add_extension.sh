#!/bin/bash

# Jupyter Agent Extension 추가 스크립트

set -e  # 에러 발생시 스크립트 중단

echo "🔧 Adding Jupyter Agent extension..."

# 1. Poetry로 로컬 휠 추가
echo "📦 Step 1: Adding wheel package..."
poetry add /Users/hydra01/repo/jupyter_agent/packages/jupyter-agent/dist/jupyter_agent-0.1.0-py3-none-any.whl

# 2. JupyterLab 익스텐션 빌드 (필요시)
echo "🏗️  Step 2: Building JupyterLab extensions..."
poetry run jupyter lab build

# 3. JupyterLab 실행
echo "🚀 Step 3: Launching JupyterLab..."
poetry run jupyter lab
