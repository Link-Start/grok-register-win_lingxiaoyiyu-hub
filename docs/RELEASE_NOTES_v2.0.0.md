# Grok Register Win v2.0.0

## 重大变更

### 面板 UI 全面重做

从深色科技蓝渐变改为暖米色「Atelier 简约工坊」风格，整体视觉语言完全更新。

**设计细节：**

| 项目 | 旧（v1.4.0） | 新（v2.0.0） |
|------|--------------|--------------|
| 背景 | 深色径向渐变 | 暖米色 `#f7f4ed` 纯净底 |
| 边框 | 1px 蓝灰线 + 圆角 10-16px | 1px 黑线 + 2px 微圆角 |
| 按钮 | 渐变填充 + 阴影 | 扁平铁锈红/墨黑/绿/琥珀 |
| 字体 | system-ui | Bricolage Grotesque + IBM Plex Sans/Mono + Noto Sans SC |
| 顶栏 | flex 分散布局 | 黑色通栏 + 铁锈红 Logo |
| 统计 | auto-fit 卡片 | 6 格通栏分割 |
| 日志 | 深色圆角框 | 深色通栏（与卡片无缝衔接） |

### 全中文化

所有界面文案改为中文，保留技术专有名词（CF Worker / SSO / CPA / API URL / OAuth 等）。

**主要中文化对照：**

| 旧英文 | 新中文 |
|--------|--------|
| Grok Register | GROK//注册控制台 |
| SSO Package / CPA Credentials / Sub2 Import Bundle | SSO 账号包 / CPA 凭证 / Sub2 导入包 |
| Files / SSO Accounts / CPA Converted | 文件数 / SSO 账号 / 已转 CPA |
| Register Engine / Mail Service / Operation Log | 注册引擎 / 邮箱服务 / 运行日志 |
| Account Files / File / Count / Modified / Action | 账号文件 / 文件名 / 数量 / 修改时间 / 操作 |
| Admin Token / API Base / Token | 管理员令牌 / API 地址 / 令牌 |
| Execute / Halt / Save Config / Upload & Convert | 开始注册 / 停止 / 保存邮箱设置 / 上传并转换 |

### 功能逻辑零改动

全部 id、API 调用、Jinja 变量、JS 函数原样保留，仅替换 HTML 结构和 CSS。注册、CPA 转换、邮箱配置、文件管理等功能行为与 v1.4.0 完全一致。

## 升级

1. 下载本 Release 的 Source code (zip)，或 `git pull` / 检出 `v2.0.0`
2. 双击 `start.bat`
3. 浏览器 **Ctrl+F5** 强制刷新面板（首次加载新字体需联网）

## 相对 v1.4.0

- v1.4.0：移除全部公共邮箱源，邮箱配置层统一为 cfworker 协议
- v2.0.0：面板 UI 全面重做为 Atelier 简约工坊风格，全中文化
