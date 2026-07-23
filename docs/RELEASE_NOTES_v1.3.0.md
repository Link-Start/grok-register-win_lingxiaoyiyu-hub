# Grok Register Win v1.3.0

## 亮点

面板支持 **上传已有 SSO（txt / CPA all.json）→ 整批换票 → 下载 CPA / Sub2**，用于凭证续期与旧号池重铸，且与注册批次隔离。

## 新增

### 上传 SSO → CPA / Sub2

- 面板卡片：选择文件 → **上传并转换**
- 支持格式：
  - `email----password----sso`
  - `email----sso`
  - 纯 SSO 行
  - CPA 导出 `all.json` / 单账号 `xai-*.json`（读取 `sso` 字段）
- **整批替换**：上传前将当前 `accounts_*.txt` 与 `data/cpa` 归档到 `data/archive/<时间戳>_upload/`
- 转换复用现有 `lib/sso2cpa_core.py`（Authorization Code + `referrer=grok-build`）
- 完成后仍用顶部按钮下载：
  - SSO TXT
  - CPA ZIP（`type=xai` / `auth_kind=oauth`）
  - Sub2 ZIP（`sub2api-data`）

### 工作区模式

| 模式 | 行为 |
|------|------|
| 上传 | 只保留本次上传批次；下载只反映该批 |
| 注册 | 从上传模式点「开始注册」时归档上传批次并清空，再跑注册 |

### API

- `POST /api/sso/upload-convert`（multipart 字段 `file`）

## 升级

1. 下载本 Release 的 Source code (zip) 并解压，或 `git pull` / 检出 `v1.3.0`
2. 双击 `start.bat`
3. 浏览器 **Ctrl+F5** 强制刷新面板
4. 在「上传 SSO → CPA / Sub2」试用续期流程

## 说明

- 上传依赖 JSON/TXT 中的 **web SSO**；SSO 过期则换票失败
- 换票成功后仍可能出现上游 **403 对话权限被拒**（号本身无 Build 对话权限），与本机转换无关
- 归档目录默认不上传到 Git（见 `.gitignore`）
