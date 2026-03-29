#!/bin/bash
# 启动所有产品客服 Agent

set -e

AGENTS_DIR="/root/.openclaw/workspace/agents"

echo "🚀 启动所有产品客服 Agent"
echo "=========================="
echo ""

# 定义要启动的 Agent
AGENTS=(
    "fortune-cs:🌟 算命测算客服"
    "door-service-cs:🏠 上门服务客服"
    "marriage-dating-cs:💕 婚恋交友客服"
)

# 遍历启动每个 Agent
for agent_info in "${AGENTS[@]}"; do
    IFS=':' read -r agent_name agent_desc <<< "$agent_info"
    
    echo ""
    echo "📦 正在启动 $agent_desc ($agent_name)..."
    echo "----------------------------------------"
    
    if [ -f "$AGENTS_DIR/$agent_name/start.sh" ]; then
        # 在后台启动 Agent
        bash "$AGENTS_DIR/$agent_name/start.sh" &
        echo "✅ $agent_desc 启动命令已发送"
    else
        echo "❌ $agent_desc 启动脚本不存在"
    fi
    
    # 等待一段时间再启动下一个
    sleep 2
done

echo ""
echo "=========================="
echo "🎉 所有 Agent 启动命令已发送！"
echo ""
echo "📋 启动的 Agent："
for agent_info in "${AGENTS[@]}"; do
    IFS=':' read -r agent_name agent_desc <<< "$agent_info"
    echo "  • $agent_desc"
done
echo ""
echo "💡 查看运行状态："
echo "  openclaw sessions_list"
echo ""
echo "💡 查看 Gateway 状态："
echo "  openclaw gateway status"
