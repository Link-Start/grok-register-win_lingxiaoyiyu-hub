@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo [1/3] 检查 Python...
where python >nul 2>nul
if errorlevel 1 (
  echo 未找到 python，请先安装 Python 3.10+ 并勾选 Add to PATH
  pause
  exit /b 1
)
python --version

echo [2/3] 创建虚拟环境 .venv ...
if not exist ".venv\Scripts\python.exe" (
  python -m venv .venv
)
call ".venv\Scripts\activate.bat"

echo [3/3] 安装依赖...
python -m pip install -U pip
python -m pip install -r requirements.txt
if errorlevel 1 (
  echo 依赖安装失败
  pause
  exit /b 1
)

if not exist "config.json" (
  copy /Y "config.example.json" "config.json" >nul
  echo 已生成 config.json
)

echo.
echo 完成。请先打开本机 Clash（端口 7890），再双击 启动.bat
pause
