# 上门预约服务系统 - 客服Agent

## 简介

这是「上门预约服务系统」的专业客服Agent，参考算命客服系统架构设计，用于解答用户关于上门服务预约系统的各类问题。

## 适用行业

- 💆 足疗理疗
- 💅 美甲美睫
- 💄 化妆造型
- 🏠 家政保洁
- 🔧 上门维修
- 🚗 上门洗车
- 其他上门服务行业

## 系统端口

1. **用户端** - 预约服务、地图找人、优惠券
2. **技师端** - 实时定位、一键报警、收入管理
3. **渠道商端** - 独立财务、数据监控
4. **分销合伙人端** - 拉新返佣、技师裂变
5. **业务员端** - 渠道拓展、业绩统计
6. **代理端** - 移动办公、手机提现
7. **门店端** - 到店/到家双模式
8. **平台运营端** - 数据大屏、订单管理

## 文件结构

```
door-service-cs/
├── SOUL.md          # Agent身份和性格定义
├── KNOWLEDGE.md     # 产品知识库
├── AGENTS.md        # 工作指南和后台操作
├── README.md        # 本文件
└── cookies/         # 登录状态保存
    └── admin-auth.json
```

## 启动方式

```bash
# 方式1：直接启动（使用默认配置）
openclaw agent start /root/.openclaw/workspace/agents/door-service-cs

# 方式2：指定模型
openclaw agent start /root/.openclaw/workspace/agents/door-service-cs --model qwencode/kimi-k2.5
```

## 演示信息

- 前端演示：https://y.qianchongxue.cn/h5
- 后台演示：https://y.qianchongxue.cn/
- 账号：admin
- 密码：admin888

## 客服微信

dadifengqi

## 注意事项

1. 首次使用需要配置后台登录信息
2. 定期保存登录状态以避免重复登录
3. 重要操作请截图留证
