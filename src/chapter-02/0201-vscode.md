## 安装 VS Code

VS Code 是 Microsoft 在 2015 年 4 月 30 日 Build 开发者大会上正式宣布的一个运行于 Mac OS X、
Windows 和 Linux 之上的，针对于编写现代 Web 和云应用的跨平台源代码编辑器，可在桌面上运行。
它具有对 JavaScript，TypeScript 和 Node.js 的内置支持，并具有丰富的其他语言和运行时扩展生态系统。

[^vscode_home]: <https://code.visualstudio.com/>
[^vscode_down]: <https://code.visualstudio.com/Download>

### Windows 安装 VS Code

官网[^vscode_home]下载[^vscode_down] VSCode-win32-x64-1.104.3.zip 到 MDDOCX/tool 文件夹，
解压到 VSCode-win32-x64-1.104.3 文件夹。
移动文件夹 VSCode-win32-x64-1.104.3 到 MDDOCX/idea 文件夹。

### Ubuntu 安装 VS Code

Ubuntu 系统安装 VS Code 过程如下：

```plaintext
1. App Center > Development > code > Install
2. Authentication Required 
   - Password
   - Authenticate
3. Open
4. 右击任务栏 VSCode 图标
   - Pin to Dash
```

### 开始使用 VS Code

VS Code 通过打开 Markdown 写作项目的根文件夹开始使用的。
通过 VS Code 可以组织项目，编写文档，预览效果，
还可以将 Markdown 生成其他格式文档。
具体创建 markdown_writing 项目并开始写作过程如下：

```plaintext
1. 创建文件夹
   - MDWORK/markdown_writing
2. 启动 VS Code 
   - Windows 进入文件夹 MDDOCX\idea\VSCode-win32-x64-1.104.3 鼠标左键双击 Code.exe
   - Ubuntu 在终端窗口输入 code 按回车键启动
3. VS Code 主菜单 > File > Open Folder... 
   - 选择文件夹 MDWORK/markdown_writing
4. 在左侧 EXPLORER > MARKDOWN_WRITING 窗口创建新文件夹
   - 鼠标右键 > 快捷菜单 > New Folder...
   - 按 MARKDOWN_WRITING 右侧的 New Folder... 按钮
5. 输入文件夹名
   - src
6. 在左侧 EXPLORER > MARKDOWN_WRITING > src 创建新文件夹
   - src > 鼠标右键 > 快捷菜单 > New Folder...
   - src > 按 MARKDOWN_WRITING 右侧的 New Folder... 按钮
7. 输入文件夹名
   - chapter-01
8. 在左侧 EXPLORER > MARKDOWN_WRITING > chapter-01 文件夹创建新文件
   - chapter-01 > 鼠标右键 > 快捷菜单 > New File...
   - chapter-01 > 按 MARKDOWN_WRITING 右侧的 New File... 按钮
5. 输入文件名
   - 0100-markdown.md
6. 鼠标左键双击文件
   - 0100-markdown.md
7. 鼠标点击 0100-markdown.md 的编辑窗口，按组合键打开预览窗口
   - Ctrl+Shift+V 在新标签打开预览窗口
   - Ctrl+K V 在右边栏打开预览窗口
```

0100-markdown.md 的具体内容可以参考 [Markdown 简介]

Markdown 写作项目的初始目录结构如下：

```plaintext
\MDDOCX\WORKSPACE\MARKDOWN_WRITING
└─src
    └─chapter-01
        │  0100-markdown.md
        │  0101-commonmark.md
        └─images
                01.jpg
                02.jpg
```







