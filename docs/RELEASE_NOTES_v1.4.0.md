# Grok Register Win v1.4.0

## 重大变更

### 移除全部公共邮箱源

公共临时邮箱（TempMail.lol / DuckMail / GPTMail）均因 xAI 大规模拒收验证码而移除。面板邮箱下拉只保留自建与付费源。

- 已配置旧公共源的用户**自动回退到 cfworker**，不会报错
- 请切换到 **CF Worker 自建域名** 或其它可用源

### 邮箱配置层重构

- `cloudflare` / `custom` / `tempmailer` 等旧标识统一作为 `cfworker` 别名（同一协议）
- 删除重复的下拉项与独立配置框（cloudflare_temp_email 独立配置框已移除）
- 面板邮箱下拉精简为两组：

| 分组 | 邮箱源 |
|------|--------|
| 自建 | CF Worker、MoeMail、Freemail、OpenTrashMail |
| 付费 | MaliAPI(YYDS)、LuckMail、SkyMail、CloudMail、Laoudo |

## 升级

1. 下载本 Release 的 Source code (zip)，或 `git pull` / 检出 `v1.4.0`
2. 双击 `start.bat`
3. 浏览器 **Ctrl+F5** 强制刷新面板
4. 在「邮箱服务」下拉选择自建或付费邮箱源并填写配置

## 相对 v1.3.1

- v1.3.1：下载与删除严格对齐当前面板账号
- v1.4.0：移除全部公共邮箱源，邮箱配置层统一为 cfworker 协议
