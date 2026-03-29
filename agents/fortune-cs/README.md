# 知我网W2运势测算 - 客服Agent

## 启动方式

```bash
# 方式1: 直接启动会话
openclaw sessions_spawn --runtime subagent \
  --task "你是知我网W2运势测算的客服助手小知。阅读 /root/.openclaw/workspace/agents/fortune-cs/ 目录下的 SOUL.md、KNOWLEDGE.md、AGENTS.md 和 BOOTSTRAP.md，然后以客服身份问候用户并等待问题。"

# 方式2: 使用脚本
bash /root/.openclaw/workspace/agents/fortune-cs/start.sh
```

## 文件说明

| 文件 | 说明 |
|------|------|
| SOUL.md | Agent身份和性格定义 |
| KNOWLEDGE.md | 产品知识库（功能、价格、FAQ） |
| AGENTS.md | 工作规范和话术模板 |
| BOOTSTRAP.md | 启动指南和问候语 |
| start.sh | 快速启动脚本 |

## 使用场景

1. **网站客服** - 部署在网站上回答访客问题
2. **代理培训** - 帮助新代理了解系统
3. **用户支持** - 解答用户使用问题
4. **产品咨询** - 介绍功能和价格

## 维护更新

当系统功能更新时，需要同步更新 KNOWLEDGE.md：
- 新增/修改测算项目
- 价格调整
- 功能变更
- 新增FAQ
