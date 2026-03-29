// 权限检查模块
// 此文件定义了敏感操作和权限检查逻辑

const ADMIN_WECHAT_ID = "o9cq80wR_WXDEP6vxs1-n-i2T0HU@im.wechat";
const ADMIN_PASSWORD = "lj164599";

// 敏感操作关键词
const SENSITIVE_KEYWORDS = {
  // 技能管理
  skills: ["安装技能", "install skill", "找技能", "find skill", "skillhub", "clawhub", 
           "更新技能", "update skill", "删除技能", "remove skill"],
  // Agent管理
  agents: ["制作agent", "创建agent", "写agent", "spawn agent", "sessions_spawn",
           "制作 agent", "创建 agent", "写 agent"],
  // 系统命令
  commands: ["执行命令", "运行命令", "exec", "shell", "bash", "terminal", "命令行"],
  // 文件修改
  files: ["修改配置", "编辑文件", "write", "edit", "删除文件", "删除配置"]
};

// 检查是否为敏感操作
function isSensitiveOperation(message) {
  const lowerMsg = message.toLowerCase();
  for (const category in SENSITIVE_KEYWORDS) {
    for (const keyword of SENSITIVE_KEYWORDS[category]) {
      if (lowerMsg.includes(keyword.toLowerCase())) {
        return { isSensitive: true, category, keyword };
      }
    }
  }
  return { isSensitive: false };
}

// 检查是否为管理员
function isAdmin(userId) {
  return userId === ADMIN_WECHAT_ID;
}

// 验证密码
function verifyPassword(password) {
  return password === ADMIN_PASSWORD;
}

module.exports = {
  ADMIN_WECHAT_ID,
  ADMIN_PASSWORD,
  SENSITIVE_KEYWORDS,
  isSensitiveOperation,
  isAdmin,
  verifyPassword
};
