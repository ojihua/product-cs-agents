#!/bin/bash
# GitHub上传脚本
# 使用方法: ./push-to-github.sh YOUR_GITHUB_TOKEN

TOKEN=$1

if [ -z "$TOKEN" ]; then
    echo "❌ 错误: 请提供GitHub Personal Access Token"
    echo ""
    echo "使用方法:"
    echo "  ./push-to-github.sh YOUR_TOKEN"
    echo ""
    echo "如何获取Token:"
    echo "  1. 登录GitHub: https://github.com"
    echo "  2. Settings → Developer settings → Personal access tokens"
    echo "  3. Generate new token (classic)"
    echo "  4. 勾选 'repo' 权限"
    echo "  5. 复制生成的token"
    exit 1
fi

echo "🚀 开始推送到GitHub..."
echo ""

# 设置远程仓库
echo "📡 配置远程仓库..."
git remote remove origin 2>/dev/null
git remote add origin "https://24034705:${TOKEN}@github.com/24034705/product-cs-agents.git"

# 检查远程仓库
echo "🔍 检查远程仓库配置..."
git remote -v

echo ""
echo "📤 推送到GitHub..."
git push -u origin master

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功!"
    echo ""
    echo "🌐 仓库地址:"
    echo "  https://github.com/24034705/product-cs-agents"
    echo ""
    echo "📋 仓库内容:"
    echo "  - 3个产品客服Agent"
    echo "  - 完整的知识库和文档"
    echo "  - 启动脚本和使用指南"
else
    echo ""
    echo "❌ 推送失败，请检查:"
    echo "  1. Token是否正确"
    echo "  2. Token是否有repo权限"
    echo "  3. 网络连接是否正常"
fi
