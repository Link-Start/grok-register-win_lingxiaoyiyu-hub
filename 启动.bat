@echo off
chcp 65001 >nul
cd /d "%~dp0"
title Grok Register Win

if not exist ".venv\Scripts\python.exe" (
  echo 首次运行：正在自动执行 setup.bat ...
  call "%~dp0setup.bat"
  if not exist ".venv\Scripts\python.exe" (
    echo 环境未就绪，请手动运行 setup.bat
    pause
    exit /b 1
  )
)

if not exist "config.json" (
  copy /Y "config.example.json" "config.json" >nul
)

echo.
echo 使用前请确认：
echo   1. 本机 Clash 已启动，HTTP/mixed 端口 7890
echo   2. 已在 Clash 里选好可用节点（订阅在 Clash 中更新）
echo   3. 已安装 Chrome 或 Edge
echo.
echo 面板地址: http://127.0.0.1:8787
echo 默认密码: admin
echo.

".venv\Scripts\python.exe" "%~dp0launcher.py"
echo.
echo 已退出。
pause
