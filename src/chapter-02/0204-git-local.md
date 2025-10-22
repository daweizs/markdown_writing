## 安装 Git

### Windows 安装 Git

[^git_home]: <https://git-scm.com/>
[^git_down]: <https://git-scm.com/download/win>
[^github_win_home]: <https://github.com/git-for-windows/git>
[^github_win_down]: <https://github.com/git-for-windows/git/releases>

Git 是版本管理的神器，具体见官网[^git_home]。
建议保持默认安装位置 C:/Program Files/Git，如果操作系统或C盘损坏，请重新安装本软件。
安装 Git 前最好安装 Notepad++。

官网下载[^git_down] 或通过 Github[^github_win_home] 下载[^github_win_down]
 Git-2.51.0-64-bit.exe 到 MDDOCX/tool 文件夹下，鼠标左键双击开始安装，安装过程如下：

```plaintext
1. 你要允许此应用对你的设备进行更改吗？
    - 是
2. Information
    - Next
3. Select Destination Location
    - C:/Program Files/Git
4. Select Components
    - [√] (NEW!)Add a Git Bash Profile to Windows Terminal
    - Next
5. Select Start Menu Folder
    - Git
    - Next
6. Choosing the default editor used by Git
    - Use Notepad++ as Git's default editor
    - Next
7. Adjusting the name of the initial branch in new repositories
    - Let Git decide
    - Next
8. Adjusting your PATH environment
    - Git from the command line and also from 3rd-party software
    - Next
9. Choosing the SSH executable
    - Use bundled OpenSSH
    - Next
10. Choosing HTTPS transport backend
    - Use the OpenSSL library
    - Next
11. Configuring the line ending conversions
    - Checkout Windows-style, commit Unix-style line endings
    - Next
12. Configuring the terminal emulator to use with Git Bash
    - Use Windows' default console window
    - Next
13. Choose the default behavior of `git pull`
    - Fast-forward or merge
    - Next
14. Choose a credential helper
    - Git Credential Manager
    - Next
15. Configuring extra options
    - [√] Enable file system caching
    - Next
16. Configuring experimental options
    - Install
17. Completing the Git Setup Wizard
    - Finish
```

安装完成后，打开 cmd 命令终端，具体过程如下：

```plaintext
1. 按 win+r 组合键
2. 运行
   - 打开： cmd
   - 确定
3. 出现 cmd 命令行窗口 
```

在 cmd 命令行窗口输入如下命令验证 Git 安装是否成功。

```bash
git -v
git --version
```

Git 安装成功后在 cmd 终端输入如下命令进行初始设置。

```plaintext
git config --global user.name "Jack Ma"
git config --global user.email "jack@mail.com"
git config -l
```

### Ubuntu 安装 Git

在 Ubuntu 操作系统上安装、验证和配置 Git 的操作命令如下：

```bash
sudo apt install git
git --version
git config --global user.name "Jack Ma"
git config --global user.email "jack@mail.com"
git config --list
```

### Git 本地库

在项目的根目录 MDWORK/markdown_writing 添加文件 .gitignore

```gitignore {.numberLines startFrom="1"}
**/build/
**/*.log
```

创建并初始化 Git 本地库的操作过程如下：

```plaintext
1. Ctrl+Shift+G 打开源码控制栏
2. 点击 Initialize Repository 按钮，在项目空间初始化本地 Git 库。
3. 出现已经修改过的文件列表
   - 顶端输入 Message：markdown writing init
   - Commit
```

如果远程库使用 Github，为本地库添加 Github 库连接：

```plaintext
1. Ctrl+Shift+G 切换到 SOURCE CONTROL 浏览窗口
2. CHANGES > ... > Remote > Add Remote...
   - git@github.com:daweizs/markdown_writing.git
   - origin
```

如果远程库使用 Gitee，为本地库添加 Gitee 库连接：

```plaintext
1. Ctrl+Shift+G 切换到 SOURCE CONTROL 浏览窗口
2. CHANGES > ... > Remote > Add Remote...
   - git@gitee.com:daweizs/markdown_writing.git
   - origin
```

提交改变到本地库，并推送到远程 Git 库：

```plaintext
1. Ctrl+Shift+G 切换到 SOURCE CONTROL 浏览窗口
2. 输入提交信息
   - git local config
3. Commit
4. Sync Changes 
5. This action will pull and push commits from and to "origin/main"
   - OK
```

查看本地 Git 库的配置：

```plaintext
1. 进入文件夹 MDWORK\markdown_writing\.git
2. 用编辑器打开文件 config
```

连接 Github 的配置如下：

```conf {.numberLines startFrom="1"}
[core]
	repositoryformatversion = 0
	filemode = false
	bare = false
	logallrefupdates = true
	symlinks = false
	ignorecase = true
[remote "origin"]
	url = git@github.com:daweizs/markdown_writing.git
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "main"]
	remote = origin
	merge = refs/heads/main
```

如果连接 Gitee，上述配置文件中

```conf {.numberLines startFrom="1"}
url = git@gitee.com:daweizs/markdown_writing.git
```

