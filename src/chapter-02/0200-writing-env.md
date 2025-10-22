# 准备写作环境

- 使用 Windows 操作系统的用户选看 Windows 相关内容
- 使用 Linux 操作系统的用户参看 Ubuntu 相关内容

## 准备环境目录

### 准备 Windows 写作环境目录

Windows 操作系统创建如下文档写作目录环境：

```plaintext
x:\mddocx           # x 为非系统盘符的其他盘符，mddocx 为写作环境根目录
├─idea              # 写作环境部署目录
├─repos             # 写作环境资源仓库
├─resource          # 写作内容资源库
├─tool              # 相关工具下载目录
└─workspace         # 写作项目工作空间
```

针对上述目录结构约定如下@tbl:windows_env系统环境变量方便下文引用。

变量名 | 样例            |  变量说明    
-------|-----------------|-----------
MDDOCX | d:/mddocx       | Markdown 写作环境根目录
MDIDEA | MDDOCX/idea     | 写作环境部署目录
MDREPO | MDDOCX/repos    | 写作环境资源仓库
MDTOOL | MDDOCX/tool     | 相关工具下载目录 
MDRESO | MDDOCX/resource | 写作内容资源库
MDWORK | MDDOCX/workspace| 写作项目工作空间

: Windows 系统下 Markdown 写作环境目录系统环境变量 {#tbl:windows_env}

上表除 MDDOCX 必须设定外，其他变量可以通过 MDDOCX 加后缀路径的方式表示，参见上表中的样例。
Windows 操作系统设置 MDDOCX 系统环境变量的过程如下：

```plaintext
1. win+d 组合键返回桌面
2. 此电脑 → 鼠标右键 → 属性
3. 系统 → 高级系统设置
4. 系统属性 → 高级 → 环境变量
5. 系统环境变量 → 新建
6. 新建系统环境变量
	- 变量名： MDDOCX
	- 变量值： D:\mddocx（浏览目录）
7. 系统变量 → path → 编辑
9. 编辑环境变量 → 新建
	- %MDDOCX%
	- 或者在 Path 环境变量前面增加 %MDDOCX%;
```

上述 Windows 系统环境变量设置过程可用如下变量设置表示：

```profile {.numberLines startFrom="1"}
MDDOCX=D:/mddocx
PATH=%PATH%;%MDDOCX%
```

后文中凡需要通过类似操作设置 Windows 系统环境变量的均用上述变量设置表示。

### 准备 Ubuntu 写作环境目录

打开 Ubuntu 的命令终端输入如下命令创建 Markdown 写作环境目录：

```bash
cd ~
mkdir {tool,workspace}
sudo mkdir -p /opt/mddocx/{idea,repos,resource}
sudo chmod -R 755 /opt/mddocx/{idea,repos,resource}
```

上述命令创建的目录结构如下：

```plaintext
/opt/mddocx
├── idea
├── repos
└── resource
/home/jack/
├── texmf
├── tool
└── workspace
```

针对上述目录结构指定如下@tbl:ubuntu_env约定的系统环境变量以方便下文引用。

变量名 | 样例            |  变量说明    
-------|-----------------|-----------------------------------
MDDOCX | /opt/mddocx            | Markdown 文档生成环境根目录
MDIDEA | MDDOCX/idea            | 集成开发环境部署目录
MDREPO | MDDOCX/repos           | 生成环境资源库
MDTOOL | /home/jack/tool        | 生成环境工具库 
MDRESO | MDDOCX/resource        | 生成内容资源库
MDWORK | /home/jack/workspace   | 生成内容资源库

: Ubuntu 系统 Markdown 写作环境系统环境变量 {#tbl:ubuntu_env}

上述变量除 MDDOCX 需要设置成系统环境变量外，
其他变量或者可以通过 MDDOCX 加后续路径的方式表示，或者写出家目录下的全路径。 
下面是设置系统环境变量 MDDOCX 的具体过程：

```plaintext
1. 打开命令行终端输入如下命令
    sudo vim /etc/profile
2. 在打开的文件 /etc/profile 末尾输入如下环境变量
    MDDOCX=/opt/mddocx
    PATH=$PATH:$MDDOCX
3. 保存并关闭文件后，执行如下命令使刚设置的环境变量生效
    source /etc/profile
4. 可以通过如下命令验证所设环境变量是否生效
    env
```

如果没有 vim 参见下文安装。

在后文中 Ubuntu 系统设置环境变量的过程均简写为如下变量设置形式，
具体操作工程如上文。

```profile {.numberLines startFrom="1"}
MDDOCX=/opt/mddocx
PATH=$PATH:$MDDOCX
```

## 安装常用工具

### Windows 安装 WinRAR

[^winrar_home]: <https://www.win-rar.com/>
[^winrar_down]: <https://www.win-rar.com/predownload.html>

去 WinRAR 官网[^winrar_home]下载页面[^winrar_down]下载文件 winrar-x64-713sc.exe 
到 MDDOCX/tool 文件夹下，鼠标左键双击开始安装，安装过程如下：

```plaintext
1. 你要允许此应用对你的设备进行更改吗？
   - 是
2. WinRAR 7.13
   - 目标文件夹：C:\Program Files\WinRAR
   - 安装
3. WinRAR 简体中文版安装
   - 确定
   - 完成
```

### Windows 安装 Notepad ++

[^npp_home]: <https://notepad-plus-plus.org>
[^npp_github_home]: <https://github.com/notepad-plus-plus/notepad-plus-plus>
[^npp_github_down]: <https://github.com/notepad-plus-plus/notepad-plus-plus/releases>

Notepad++ 的特点

1. 超长文件的编辑
2. 方便编码和转码
3. 很多插件
4. 打开编辑文件方便
5. 支持语法高亮
6. 支持相关软件

去 notepad++[^npp_home] 的 Github 官网[^npp_github_home]下载[^npp_github_down] 
npp.8.8.5.Installer.x64.exe 到 MDDOCX/tool 文件夹下，
鼠标左键双击安装，安装过程如下： 

```plaintext
1. 你要允许此应用对你的设备进行更改吗？ 
    - 是
2. Installer Language
    - 中文（简体）
    - OK
3. 欢迎使用 Notepad++ v8.6.9 安装程序
    - 下一步
4. 许可协议
    - 我接受(I)
5. 选择安装位置
    - 安装目录，C:/Program Files/Notepad++
    - 下一步
6. 选择组件
    - 保持默认选项
    - 下一步
7. 选择组件
    - [ ] Create Shortcut on Desktop
    - [ ] Don't use %APPDATA%
    - 安装
8.  正在安装...
9.  Notepad++ v8.6.9 安装程序结束
    - [√] 运行 Notepad++ v8.6.9(R)
    - 完成
10. 鼠标右键任意文件，查看快捷菜单中的“Edit with Notepad++”
```

Notepadd++ 安装插件过程如下：

```plaintext
1. 插件 > 插件管理 > 搜索：hex
   - [√] HEX-Editor
   - 安装
2. 插件 > 插件管理 > 搜索：json
   - [√] JSON Tools
   - [√] JSON Viewer
   - 安装
```

### Ubuntu 安装常用工具

安装 Ubuntu 常用系统工具的命令如下：

```bash
sudo apt install vim ssh tree rsync wget
sudo apt install net-tools iputils-ping unzip apt-file
```

每种系统工具的基本功能如下 @tbl:ubuntu_sys_tool

命令         | 功能
---|---------------
vim          | 文本编辑器
ssh          | 远程登录和安全通信
tree         | 以树状图形式展示目录结构
rsync        | 高效的文件同步工具
wget         | 命令行网络下载工具
net-tools    | 网络配置与诊断工具集: ifconfig, netstat, route,arp, hostname, mii-tool/ethtool
iputils-ping | 网络连通性测试工具软件包
unzip        | 解压缩 ZIP 格式压缩包
apt-file     | 查找包含指定文件的软件包

: Ubuntu 常用系统工具 {#tbl:ubuntu_sys_tool}

## 生成 SSH 密钥

SSH 密钥对可以使 SSH 客户端和服务器之间通过免密码方式登录并建立联系，
方便二者之间的连接和使用。

### Windows 生成 SSH 密钥

通过 Windows 命令终端生成 SSH　密钥的过程如下：

```plaintext
1. win+r > cmd 打开 cmd 终端
2. ssh-keygen -t rsa
   - Enter file in which to save the key (C:\Users\账户名/.ssh/id_rsa): ENTER
   - Enter passphrase (empty for no passphrase): ENTER
   - Enter same passphrase again: ENTER
3. 进入文件夹 C:\Users\账户名\.ssh
4. 复制文件 id_rsa.pub 到 authorized_keys
```

### Ubuntu 生成 SSH 密钥

通过 Ubuntu 终端生成 SSH 密钥的过程如下：

```bash
cd ~
ssh-keygen -t rsa
    - Enter file in which to save the key (/home/账户名/.ssh/id_rsa): ENTER
    - Enter passphrase (empty for no passphrase): ENTER
    - Enter same passphrase again: ENTER
cd .ssh
cat id_rsa.pub >> authorized_keys
cat authorized_keys
```

## 安装 Chrome

[^chrome_home]: <https://www.google.cn/chrome/>
[^chrome_down]: <https://www.google.cn/chrome/?standalone=1&platform=win64>

### Windows 安装 Chrome

打开 Chrome 官网[^chrome_home]，点击 “下载 Chrome[^chrome_down]” 按钮，
下载文件 ChromeSetup.exe，下载完成后双击启动安装过程。

```plaintext
1. 你要允许此应用对你的设备进行更改吗？
   - 是
2. 正在等待安装...
3. 安装完成出现 Chrome 界面
   - 不登录
   - 设为默认
4. 任务栏 Chrome 图标 > 鼠标右键
   - 固定到任务栏
```

Chrome 地址栏输入 chrome://settings 进行设置。

```plaintext
1. 默认浏览器
2. 起始页面
   - (x) 继续浏览上次打开的网页
3. 下载内容
   - 位置：D:\Downloads
```

Chrome 地址栏输入 chrome://flags 进行设置。

```plaintext
1. 搜索框输入
   - parallel 
2. Parallel downloading
   - Enabled
3. 重新启动
```

### Ubuntu 安装 Chrome

打开 Chrome 官网，点击 “Download Chrome” 
按钮启动 Ubuntu 下安装过程，具体如下：

```plaintext
1. Get Chrome
   - (x) 64-bit .deb
   - Accept and install
2. 下载完成后点击文件 google-chrome-stable_current_amd64.deb
3. Open Width...
   - App Center
   - Open
4. App Center
   - google-chrome-stable
   - Install
5. Are you sure you want to install it?
   - Install
6. 点击桌面左下角 Show Apps
   - Search: Chrome
7. 鼠标点击 Google Chrome 图标
8. Welcome to Google Chrome
   - [x] Make Google Chrome the default browser
   - [ ] Automatically send usage statistics and crash reports to Google
   - OK
9. 任务栏鼠标右键 Chrome 图标
    - Pin to Dash
```

Chrome 地址栏输入 chrome://settings 设置如下：

```plaintext
1. Default browser
2. On startup
   - (x) Continue where you left off
3. Downloads
   - Location：/home/jack/Downloads
```

Chrome 地址栏输入 chrome://flags 设置如下：

```plaintext
1. Search flags
   - parallel 
2. Parallel downloading
   - Enabled
3. Relaunch
```
