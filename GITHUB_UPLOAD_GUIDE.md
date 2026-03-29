# GitHub上传指南

## 当前状态

✅ 所有文件已准备完毕并提交到本地Git仓库
✅ 创建了完整的README.md
✅ 三个Agent已配置完成

## 上传到GitHub步骤

由于GitHub已弃用密码认证，需要使用Personal Access Token。

### 步骤1: 创建GitHub Personal Access Token

1. 登录GitHub: https://github.com
2. 点击右上角头像 → Settings
3. 左侧菜单选择 Developer settings → Personal access tokens → Tokens (classic)
4. 点击 Generate new token (classic)
5. 填写信息:
   - Note: `Product CS Agents Upload`
   - Expiration: 选择有效期（建议30天）
   - Scopes: 勾选 `repo`（完整仓库访问权限）
6. 点击 Generate token
7. **重要**: 立即复制生成的token（只显示一次）

### 步骤2: 使用Token推送代码

在终端执行以下命令（将YOUR_TOKEN替换为实际token）：

```bash
cd /root/.openclaw/workspace

# 设置远程仓库（使用token）
git remote remove origin
git remote add origin https://24034705:YOUR_TOKEN@github.com/24034705/product-cs-agents.git

# 推送代码
git push -u origin master
```

### 步骤3: 验证上传

访问: https://github.com/24034705/product-cs-agents

## 仓库内容

推送成功后，GitHub仓库将包含：

```
product-cs-agents/
├── README.md                    # 项目说明
├── GITHUB_UPLOAD_GUIDE.md       # 本文件
├── agents/                      # Agent集合
│   ├── fortune-cs/             # 运势测算客服
│   ├── door-service-cs/        # 上门预约客服
│   └── marriage-dating-cs/     # 婚恋交友客服
└── ...
```

## 三个Agent详情

### 1. 🔮 fortune-cs (运势测算)
- **产品**: 知我网W2运势测算系统
- **功能**: 八字排盘、五行分析、流年运势、塔罗牌等
- **演示**: https://w2.zhive.net/

### 2. 🚪 door-service-cs (上门预约)
- **产品**: 上门预约服务系统
- **功能**: 足疗理疗、家政保洁、技师管理、分销系统等
- **演示**: https://y.qianchongxue.cn/

### 3. 💕 marriage-dating-cs (婚恋交友)
- **产品**: 完美运营版相亲交友系统
- **功能**: 婚恋相亲、红娘CRM、媒婆返利、智能匹配等
- **演示**: https://r14.qianchongxue.cn/

## 注意事项

1. **Token安全**: 不要将token提交到代码仓库
2. **Token有效期**: 建议设置合理的过期时间
3. **仓库权限**: 确保token有repo权限
4. **二次上传**: token过期后需要重新生成

## 替代方案

如果不想使用命令行，可以：

1. 在GitHub网页创建空仓库
2. 下载仓库ZIP文件
3. 解压后将文件复制到本地仓库
4. 使用GitHub Desktop客户端上传

## 需要帮助？

联系客服微信: dadifengqi
