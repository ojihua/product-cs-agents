#!/bin/bash
# 上门预约服务系统客服Agent启动脚本

echo "🏠 启动上门预约服务系统客服Agent..."
echo ""

# 检查必要的文件
if [ ! -f "SOUL.md" ]; then
    echo "❌ 错误：SOUL.md 不存在"
    exit 1
fi

if [ ! -f "KNOWLEDGE.md" ]; then
    echo "❌ 错误：KNOWLEDGE.md 不存在"
    exit 1
fi

if [ ! -f "AGENTS.md" ]; then
    echo "❌ 错误：AGENTS.md 不存在"
    exit 1
fi

# 创建cookies目录
mkdir -p cookies

echo "✅ 文件检查通过"
echo "📚 知识库加载完成"
echo "🤖 Agent身份：小依（上门预约服务系统客服）"
echo ""
echo "系统信息："
echo "  - 适用行业：足疗、理疗、美甲、家政等上门服务"
echo "  - 支持端口：用户端、技师端、代理端等8大端口"
echo "  - 演示地址：https://y.qianchongxue.cn/h5"
echo ""
echo "Agent已就绪，可以开始对话！"
