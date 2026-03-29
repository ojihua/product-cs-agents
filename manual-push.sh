#!/bin/bash
# 手动推送到GitHub
# 使用方法:
# 1. 先在GitHub网页创建仓库: https://github.com/new
# 2. 仓库名: product-cs-agents
# 3. 然后运行此脚本

echo "🚀 推送到GitHub"
echo ""
echo "请确保已在GitHub网页创建仓库:"
echo "  仓库名: product-cs-agents"
echo "  URL: https://github.com/ojihua/product-cs-agents"
echo ""
read -p "按Enter键继续..."

cd /root/.openclaw/workspace

echo ""
echo "📡 配置远程仓库..."
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/ojihua/product-cs-agents.git"

echo ""
echo "📤 推送到GitHub..."
git push -u origin master

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功!"
    echo ""
    echo "🌐 仓库地址:"
    echo "  https://github.com/ojihua/product-cs-agents"
else
    echo ""
    echo "❌ 推送失败"
    echo ""
    echo "可能原因:"
    echo "  1. 仓库未创建"
    echo "  2. 需要登录认证"
    echo ""
    echo "解决方法:"
    echo "  方法1: 使用Token推送"
    echo "    ./push-to-github.sh YOUR_TOKEN"
    echo ""
    echo "  方法2: 手动上传"
    echo "    在GitHub网页直接上传文件"
fi
