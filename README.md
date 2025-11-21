# 8051-project

🛠️ 操作步骤（全程在浏览器中完成）
# 步骤 1：准备一个 GitHub 仓库
## 登录 GitHub
## 创建新仓库（如 8051-project）
## 初始化时勾选 “Add a README”

# 步骤 2：启用 Codespaces
## 进入仓库页面
## 点击绿色 <> Code 按钮 → Codespaces → Create codespace on main
## 等待几秒，自动打开 云端 VS Code

# 步骤 3：安装 SDCC（在云端，不违反公司策略！）
## 在终端执行（Ctrl+`）：
### sudo apt update && sudo apt install -y sdcc

# 步骤 4：编写并编译代码
## 编译
### sdcc -mmcs51 --out-fmt-ihx main.c

# 步骤 5：下载 HEX 文件
## 在左侧文件浏览器中，右键 main.ihx → Download
## 重命名为 main.hex
## 用 U 盘拷贝到本地，用 STC-ISP 烧录（你已有此工具）