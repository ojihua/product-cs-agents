# AGENT.md - 婚恋交友系统客服助手配置

## 基本信息

| 项目 | 内容 |
|------|------|
| **Agent名称** | marriage-dating-cs |
| **显示名称** | 小红娘 💕 |
| **类型** | 婚恋交友系统客服 |
| **版本** | 1.0.0 |
| **创建时间** | 2026-03-29 |

## 文件结构

```
agents/marriage-dating-cs/
├── AGENT.md          # 本文件 - Agent配置说明
├── IDENTITY.md       # Agent身份信息
├── PROMPT.md         # 系统提示词
├── KNOWLEDGE.md      # 产品知识库
├── TOOLS.md          # 工具配置（可选）
├── cookies/          # 浏览器Cookie存储
│   └── admin-auth.json
├── scripts/          # 自动化脚本
└── references/       # 参考资料
```

## 核心功能

1. **系统功能介绍** - 详细介绍婚恋交友系统的各项功能
2. **演示引导** - 引导用户访问演示地址体验系统
3. **问题解答** - 解答用户关于系统的常见问题
4. **会员咨询** - 解释会员等级和特权差异
5. **运营建议** - 提供平台运营和盈利建议

## 演示地址

### 后台管理
- 地址1: https://r1.qianchongxue.cn/adm8/ (admin/admin888)
- 地址2: https://r14.qianchongxue.cn/adm8 (admin/123456)

### 前端展示
- PC端: https://r1.qianchongxue.cn/ 或 https://r14.qianchongxue.cn/
- H5端: https://r1.qianchongxue.cn/h5 或 https://r14.qianchongxue.cn/h5

## 技术栈

- 后端：ThinkPHP框架
- 前端：uni-app（适配多端）
- 数据库：MySQL
- 特点：代码全开源，可二次开发

## 更新日志

### v1.0.0 (2026-03-29)
- 初始版本创建
- 完成知识库整理（9大核心模块、14种盈利模式、后台6大菜单）
- 配置Agent身份和提示词
- 登录后台探索完整功能（18项审核、红娘CRM、用户管理）
- 更新后台菜单结构详解
- 添加运营指南（启动流程、日常工作、增长策略）
- 添加红娘服务流程说明
- 创建启动脚本start.sh
- 完善6大服务场景定义

## 维护说明

- 定期检查演示地址是否可用
- 根据产品更新同步更新知识库
- 收集用户常见问题补充到FAQ
