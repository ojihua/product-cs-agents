# Product CS Agents - 产品客服Agent集合

💼 专业的AI客服助手，为不同行业产品提供智能客服服务

## 📦 包含的Agent

### 1. 🔮 运势测算客服 (fortune-cs)
**知我网W2运势测算系统**
- 八字排盘、五行分析
- 流年运势、姻缘测算
- 事业财运、健康分析
- 周公解梦、姓名测试
- 塔罗牌占卜

**演示地址**: https://w2.zhive.net/

---

### 2. 🚪 上门预约客服 (door-service-cs)
**上门预约服务系统**
- 足疗、理疗、美甲、化妆
- 家政保洁、上门维修
- 技师管理、订单管理
- 分销系统、渠道管理
- 代理系统、门店管理

**演示地址**: 
- 后台: https://y.qianchongxue.cn/
- 前端: https://y.qianchongxue.cn/h5

---

### 3. 💕 婚恋交友客服 (marriage-dating-cs)
**完美运营版相亲交友系统**
- 婚恋相亲、红娘服务
- 媒婆推广返利系统
- 红娘CRM管理系统
- 商家婚恋商城
- 智能匹配、私聊功能

**演示地址**:
- 后台: https://r14.qianchongxue.cn/adm8
- PC端: https://r14.qianchongxue.cn/
- H5端: https://r14.qianchongxue.cn/h5

---

### 4. 🛒 多功能商城客服 (mall-cs)
**联动2+1多功能商城系统**
- 商品管理、订单管理、会员管理
- 2+1联动模式（团队裂变）
- DIY页面装修（拖拽式）
- 营销工具（优惠券、拼团、秒杀）
- 分销返利、财务管理

**演示地址**:
- 后台: https://r26.qianchongxue.cn/
- H5端: https://r26.qianchongxue.cn/h5
- 手册: https://www.kancloud.cn/xiaoke123/xkmall/3183510

---

## 🚀 快速开始

### 启动所有Agent
```bash
./start-all.sh
```

### 启动单个Agent
```bash
cd agents/fortune-cs
./start.sh

cd agents/door-service-cs
./start.sh

cd agents/marriage-dating-cs
./start.sh

cd agents/mall-cs
./start.sh
```

---

## 📁 目录结构

```
agents/
├── fortune-cs/          # 运势测算客服
│   ├── KNOWLEDGE.md     # 产品知识库
│   ├── PROMPT.md        # 系统提示词
│   ├── IDENTITY.md      # Agent身份
│   └── start.sh         # 启动脚本
├── door-service-cs/     # 上门预约客服
│   ├── KNOWLEDGE.md
│   ├── PROMPT.md
│   ├── IDENTITY.md
│   └── start.sh
├── marriage-dating-cs/  # 婚恋交友客服
│   ├── KNOWLEDGE.md
│   ├── PROMPT.md
│   ├── IDENTITY.md
│   └── start.sh
└── mall-cs/             # 多功能商城客服
    ├── KNOWLEDGE.md
    ├── PROMPT.md
    ├── IDENTITY.md
    └── start.sh
```

---

## 📊 项目统计

| 指标 | 数值 |
|------|------|
| 🤖 Agent数量 | 4个 |
| 📁 总文件数 | 161+ |
| 📝 知识库行数 | ~4000行 |
| 🌐 演示环境 | 5套 |
| 📦 Git提交 | 10+次 |

---

## 📝 Agent特点

- ✅ **知识丰富** - 完整的产品知识库
- ✅ **功能全面** - 支持功能咨询、演示引导、运营建议
- ✅ **易于扩展** - 模块化设计，方便添加新Agent
- ✅ **专业可靠** - 基于真实产品文档构建

---

## 🔧 技术栈

- **框架**: OpenClaw Agent
- **浏览器自动化**: agent-browser
- **版本控制**: Git
- **部署**: 支持本地和云端

---

## 📞 联系方式

- **客服微信**: dadifengqi
- **技术支持**: 本店有数千套成品系统源码

---

## 📄 许可证

MIT License - 开源免费使用

---

## 🙏 致谢

感谢以下开源项目：
- OpenClaw - AI Agent框架
- agent-browser - 浏览器自动化工具

---

*Created with ❤️ by OpenClaw Agent*
