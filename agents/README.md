# 🤖 产品客服 Agent 管理系统

本目录包含多个独立的产品客服 Agent，每个 Agent 对应一个业务系统。

---

## 📁 Agent 列表

| Agent 名称 | 对应系统 | 客服名称 | 状态 |
|-----------|---------|---------|------|
| **fortune-cs** | 知我网W2运势测算系统 | 小知 | ✅ 已完成 |
| **door-service-cs** | 上门预约服务系统 | 小依 | ✅ 已完成 |
| **marriage-dating-cs** | 完美运营版相亲交友系统 | 小红娘 | ✅ 已完成 |

---

## 🚀 快速启动

### 启动单个 Agent

```bash
# 启动算命客服
bash /root/.openclaw/workspace/agents/fortune-cs/start.sh

# 启动上门服务客服
bash /root/.openclaw/workspace/agents/door-service-cs/start.sh

# 启动婚恋交友客服
bash /root/.openclaw/workspace/agents/marriage-dating-cs/start.sh
```

### 启动所有 Agent

```bash
bash /root/.openclaw/workspace/agents/start-all.sh
```

---

## 📋 Agent 详情

### 1️⃣ 算命测算客服 (fortune-cs)

**系统**: 知我网W2运势测算系统
**客服名**: 小知 🌟
**功能**: 八字算命、塔罗占卜、姓名测试、星座运势等20+测算服务

**演示地址**:
- 前端: https://ml.yuhemingli.com/
- 后台: https://admin.yuhemingli.com/acs/ (admin/123456)

**知识库**:
- 20+ 测算项目介绍
- 价格体系（¥9.9 标准价）
- 后台操作指南
- 常见问题解答

---

### 2️⃣ 上门服务客服 (door-service-cs)

**系统**: 上门预约服务系统
**客服名**: 小依 🏠
**功能**: 足疗、理疗、美甲、化妆、家政等上门预约服务

**演示地址**:
- H5端: https://y.qianchongxue.cn/h5
- 后台: https://y.qianchongxue.cn/ (admin/admin888)

**知识库**:
- 8大端口功能（用户端/技师端/代理端等）
- 适用行业说明
- 营销裂变功能
- 常见问题解答

---

### 3️⃣ 婚恋交友客服 (marriage-dating-cs)

**系统**: 完美运营版相亲交友系统
**客服名**: 小红娘 💕
**功能**: 婚恋相亲、红娘服务、媒婆推广、商家商城

**演示地址**:
- PC端: https://r14.qianchongxue.cn/
- H5端: https://r14.qianchongxue.cn/h5
- 后台: https://r14.qianchongxue.cn/adm8 (admin/123456)

**知识库**:
- 多端支持说明
- 会员等级特权
- 14种盈利模式
- 红娘CRM系统
- 常见问题解答

---

## 📁 文件结构

每个 Agent 目录包含以下文件：

```
agents/
├── fortune-cs/              # 算命测算客服
│   ├── SOUL.md              # Agent身份定义
│   ├── KNOWLEDGE.md         # 产品知识库
│   ├── AGENTS.md            # 工作指南
│   ├── README.md            # 项目说明
│   ├── start.sh             # 启动脚本
│   └── cookies/             # 登录状态
├── door-service-cs/         # 上门服务客服
│   ├── SOUL.md
│   ├── KNOWLEDGE.md
│   ├── AGENTS.md
│   ├── README.md
│   ├── start.sh
│   └── cookies/
├── marriage-dating-cs/      # 婚恋交友客服
│   ├── SOUL.md
│   ├── KNOWLEDGE.md
│   ├── AGENTS.md
│   ├── README.md
│   ├── start.sh
│   └── cookies/
├── start-all.sh             # 启动所有Agent
└── README.md                # 本文件
```

---

## 🔧 管理命令

### 查看所有 Agent 状态
```bash
ls -la /root/.openclaw/workspace/agents/
```

### 查看运行中的 Agent
```bash
openclaw sessions_list | grep "cs"
```

### 停止所有 Agent
```bash
openclaw gateway restart
```

---

## 📝 添加新 Agent

如需添加新的产品客服 Agent：

1. 创建新目录：`mkdir /root/.openclaw/workspace/agents/new-system-cs`
2. 创建必要文件：
   - SOUL.md（身份定义）
   - KNOWLEDGE.md（知识库）
   - AGENTS.md（工作指南）
   - README.md（项目说明）
   - start.sh（启动脚本）
3. 更新本 README.md 添加新 Agent 信息

---

## 💡 使用建议

1. **独立运行** - 每个 Agent 都是独立的，可以同时运行多个
2. **知识隔离** - 不同 Agent 之间知识不互通，确保专业性
3. **易于维护** - 每个系统独立维护，更新不影响其他 Agent
4. **快速部署** - 通过 start.sh 一键启动

---

## 📞 技术支持

如有问题，请联系管理员。
