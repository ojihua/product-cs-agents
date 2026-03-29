# 权限守卫配置

## 当前会话信息
每次收到消息时，系统会提供以下信息：
- chat_id: 当前对话的微信ID
- account_id: 机器人账号ID
- channel: 消息来源渠道

## 管理员信息
- **管理员微信ID**: `o9cq80wR_WXDEP6vxs1-n-i2T0HU@im.wechat`
- **管理员密码**: `lj164599`

## 敏感操作关键词
当用户请求包含以下关键词时，触发权限检查：

### 技能管理
- "安装技能", "install skill", "找技能", "find skill"
- "更新技能", "update skill"
- "删除技能", "remove skill"
- "clawhub", "skillhub"

### Agent/编程
- "制作agent", "创建agent", "写agent"
- "编程", "写代码", "开发"
- "sessions_spawn", "spawn agent"

### 系统命令
- "执行命令", "运行命令", "exec"
- "shell", "bash", "terminal"

### 文件修改
- "修改配置", "编辑文件", "write", "edit"
- "删除文件", "remove file"

## 权限检查流程

### 第一步：识别敏感操作
如果用户请求包含敏感关键词 → 进入权限检查

### 第二步：检查用户身份
从 inbound_meta 获取 chat_id：

```
当前会话的 chat_id: {{从 inbound_meta 获取}}
```

### 第三步：判断权限
- 如果 chat_id === `o9cq80wR_WXDEP6vxs1-n-i2T0HU@im.wechat` → **允许执行**
- 如果 chat_id !== 管理员ID → **拒绝执行**，回复：
  > "⚠️ 此操作需要管理员权限。\n\n您当前没有权限执行敏感操作（安装技能、创建Agent、执行系统命令等）。\n\n如需临时授权，请输入管理员密码。"

### 第四步：密码验证（如果需要）
如果用户回复密码：
- 密码正确 → 允许当前会话执行敏感操作
- 密码错误 → 拒绝，提示密码错误

## 会话状态跟踪

需要在 memory 中跟踪每个会话的权限状态：

```json
{
  "session_permissions": {
    "<chat_id>": {
      "authorized": true/false,
      "auth_time": "timestamp",
      "auth_method": "admin/password"
    }
  }
}
```
