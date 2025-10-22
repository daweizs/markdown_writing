## Git Remote

[^github_home]: <https://github.com/>
[^gitee_home]: <https://gitee.com/>

Git 远程仓库可以选择在 Github 或 Gitee 创建。

### Github

为方便正在使用的计算机通过 SSH 连接 Github 需要把本计算机的 SSH 公钥保存到 Github。
具体操作过程如下：

```plaintext
1. 进入操作系统的家目录
   - Windows: C:\Users\jack
   - Ubuntu: \home\jack
2. 进入目录 .ssh
3. 用编辑器打开文件 id_rsa.pub
4. 复制 id_rsa.pub 的内容到剪贴板
5. 登录到 Github
6. 点击窗口右上角的头像 > Settings > SSH and GPG keys
   - New SSH key
7. Add new SSH key
   - Key: 剪贴板内容（id_rsa.pub 文件内容）
   - Title：公钥末尾的账户信息（jack@jack-writing）
   - Key type: Authentication Key
   - Add SSH Key
8. Confirm access
   - Password
   - Confirm
```

在 Github 上创建资源库，具体操作如下：

```plaintext
1. 登录到 Github
2. Create repository
3. Create a new repository
   - Owner: daweizs
   - Repository name: markdown_writing
   - Description: Who to writing by markdown.
   - Choose visibility: Public
   - Add README: Off
   - Add .gitignore: No .gitignore
   - Add License: No license
   - Create repository
4. 点击 daweizs/markdown_writing 进入资源库页面
```

新建 Github 仓库的网络地址是： https://github.com/daweizs/markdown_writing

新建 Github 仓库的 SSH 访问地址是：git@github.com:daweizs/markdown_writing.git

### Gitee

为方便客户机通过 SSH 免密码与 Gitee 连接，同样需要保存 SSH 公钥到 Gitee。

```plaintext
1. 进入操作系统的家目录
   - Windows: C:\Users\jack
   - Ubuntu: \home\jack
2. 进入目录 .ssh
3. 用编辑器打开文件 id_rsa.pub
4. 复制 id_rsa.pub 的内容到剪贴板
5. 登录到 Gitee
6. 点击窗口右上角的头像 > 账号设置 > SSH 公钥
   - 公钥: 剪贴板内容（id_rsa.pub 文件内容）
   - 标题：自动添加公钥末尾的账户信息（jack@jack-writing）
   - 确定
7. 账号安全验证
   - 密码验证
   - 确定
```

在 Gitee 上创建资源库，具体操作如下：

```
1. 登录到 Gitee
2. 点击窗口右上角 "十" 按钮 > 十 新建仓库
   - 仓库名称：markdown_writing
   - 归属：Dawei
   - 路径：markdown_writing
   - 仓库介绍：如何用 Markdown 写作。
   - (x) 开源
   - [ ] 初始化仓库
   - [ ] 设置模板
   - [ ] 选择分支模型
   - 创建
```

新建 Gitee 仓库的网络地址是： https://gitee.com/daweizs/markdown_writing

新建 Gitee 仓库的 SSH 访问地址是： git@gitee.com:daweizs/markdown_writing.git


