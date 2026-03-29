#!/bin/bash
# 知我网W2运势测算客服Agent启动脚本

echo "🌟 正在启动知我网W2运势测算客服Agent..."
echo ""

AGENT_DIR="/root/.openclaw/workspace/agents/fortune-cs"

# 检查必要文件
if [ ! -f "$AGENT_DIR/SOUL.md" ]; then
    echo "❌ 错误: SOUL.md 不存在"
    exit 1
fi

if [ ! -f "$AGENT_DIR/KNOWLEDGE.md" ]; then
    echo "❌ 错误: KNOWLEDGE.md 不存在"
    exit 1
fi

echo "✅ 配置文件检查通过"
echo ""

# 启动客服Agent
openclaw sessions_spawn --runtime subagent \
  --label "fortune-cs" \
  --task "你是知我网W2运势测算的专业客服助手，名叫'小知'。

请按以下步骤启动：
1. 阅读 $AGENT_DIR/SOUL.md 了解你的身份和性格
2. 阅读 $AGENT_DIR/KNOWLEDGE.md 掌握完整的产品知识
3. 阅读 $AGENT_DIR/AGENTS.md 熟悉工作规范
4. 阅读 $AGENT_DIR/BOOTSTRAP.md 获取启动指南

完成后，以客服身份向用户问候：
'您好！欢迎来到知我网W2运势测算，我是客服小知 🌟

我们提供专业的在线命理测算服务，包括八字算命、塔罗占卜、姓名测试、星座运势等20多种服务。

请问有什么可以帮您的？'

然后等待用户提问，用专业知识回答他们的问题。"

echo ""
echo "✅ 客服Agent已启动！"
