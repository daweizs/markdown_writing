# 简介

**1\. Markdown**

[^markdown_syntax]: <https://daringfireball.net/projects/markdown/syntax>

2004 年 John Gruber 与 Aaron Swartz 创建 Markdown[^markdown_syntax] 的初衷是方便网络作者创作 HTML 内容。
先采用易读易写的纯文本格式进行内容创作，之后再利用工具将其转换为结构规范的 HMTL。
因此最初的 Markdown 包含两个方面的含义：1）一种纯文本格式的语法；2）一款转换工具，将纯文本格式转换为 HTML。 
Markdown 格式语法的首要目标是尽可能保证可读性。
采用 Markdown 格式的文档无需额外处理，本身就可以作为纯文本文档发布，且不会显得满是标签或格式指令。

**2\. Pandoc**  

[^pandoc_home]: <https://www.pandoc.org/>

2006 年加州大学伯克利分校哲学教授 John MacFarlane 为方便使用 Markdown 进行学术出版，
发起开源文档转换工具 Pandoc[^pandoc_home] 。Pandoc 源自希腊神话中的牧神 “Pan”（象征全能）与 “document” 的缩写，
寓意为 “无所不能的文档转换利器”。作为学术写作需求驱动的产物，
Pandoc 最初的核心目标是简化 Markdown 到 LaTeX 的格式转换，以解决学术论文排版的痛点。
Pandoc 的诞生彻底改变了 Markdown 的应用边界，首次实现了从 Markdown 到 LaTeX、HTML、DocBook 等多格式的转换。
Pandoc 的核心创新在于构建了抽象语法树（AST），使得不同格式的转换成为可能。

**3\. GitHub Flavored Markdown Spec (GFM)**

[^gfm_home]: <https://github.github.com/gfm/>

2009 年 GitHub 正式推出 GitHub Pages 服务，允许用户通过 Jekyll 静态网站生成器将 Markdown 文件转换为静态网页。
这一功能直接推动了 Markdown 在开源项目文档和个人博客中的普及。
同年 GitHub 开始在代码仓库和 Issue 中引入自定义 Markdown 扩展 GitHub Flavored Markdown Spec (GFM)[^gfm_home] 。
GFM 的提出减少了 John Gruber 提出的 Markdown 标准说明中的语法歧义，同时进行了必要的扩展，
极大的促进了 Markdown 语法标准的发展。

**4\. CommonMark**

[^commonmark_home]: <https://commonmark.org/>

截止到 2014 年的 10 年间，由于 Markdown 没有明确无歧义的语法规范，
已经有数十种不同语言的 Markdown 实现版本，而且各种版本的差异在显著增大。
这导致用户经常遇到这样的问题：同一文档在一个系统（如 GitHub 维基）中呈现的效果，
在另一个系统（如用 Pandoc 转换为 DocBook 格式）中却完全不同。
更糟糕的是，Markdown 中没有 “语法错误” 的概念，这种实现版本差异往往无法立即被发现。
2014 年 10 月，由 John MacFarlane （Pandoc 创始人）、Jeff Atwood （Stack Overflow 联合创始人）
等人发起的 CommonMark[^commonmark_home] 项目正式发布首个规范版本 0.5。
CommonMark 的目标是提出一套 Markdown 的标准、明确无歧义的语法规范，同时配套全面的测试套件，
用于依据该规范验证各类 Markdown 实现方案的正确性。
CommonMark 规范的发布为后来 Markdown 的顺利发展打下了坚实的基础。

**5\. markdown-it**

[^markdown-it_home]: <https://markdown-it.github.io>
[^markdown-it_github]: <https://github.com/markdown-it/markdown-it>

markdown-it[^markdown-it_home] 是一款高性能、高灵活性的 JavaScript Markdown 解析器，广泛用于前端项目、Node.js 服务及各类编辑器中，
以速度快、可扩展性强、标准兼容性高为核心优势，是目前生态最丰富的 Markdown 处理工具之一。
该项目最初由 Vitaly Puzrin 和 Alex Kocharin 于 2014 年底发起，最初是对另一个 Markdown 解析器 Remarkable 的重构[^markdown-it_github]。
markdown-it 的核心竞争力在于兼顾 “性能” 与 “灵活性”，同时保证对标准的兼容，
具有高性能、标准兼容、高度可扩展、安全默认和多环境支持等特性。
markdown-it 的解析过程分为“解析”和“渲染”两个独立阶段，中间通过 “抽象语法树（AST）” 衔接。
解析阶段将输入的 Markdown 文本转换为 “Token 流”，再构建成结构化的 AST，记录文本的语法结构和语义信息。
渲染阶段遍历 AST，将每个语法节点转换为对应的 HTML 标签，同时支持自定义渲染函数。
这种 “解析与渲染分离” 的设计，允许开发者在不修改解析逻辑的情况下，自定义最终输出格式。

**6\. Visual Studio Code（VSCode）**

[^vscode_home]: <https://code.visualstudio.com/>
[^vscode_down]: <https://code.visualstudio.com/Download>

Visual Studio Code[^vscode_home]（简称 VS Code）是微软开发的开源跨平台代码编辑器，自 2015 年发布以来已成为全球开发者的首选工具[^vscode_down]。
其核心优势在于轻量高效、高度可扩展和 AI 原生集成。
VSCode 凭借其开放的插件生态和原生功能优化，已成为 Markdown 写作的主流工具之一。
其对 Markdown 的支持覆盖从基础编辑到复杂文档生成的全流程，生态环境更是整合了语法增强、
可视化渲染、格式转换、协作管理等多维度工具，满足技术文档、学术写作、知识管理等场景需求。

**7\. markdown preview enhanced（MPE）**

[^mpe_home]: <https://shd101wyy.github.io/markdown-preview-enhanced/>
[^mpe_github]: <https://github.com/shd101wyy/markdown-preview-enhanced>

markdown preview enhanced[^mpe_home]（以下简称 MPE）由开发者 Yiyi Wang 于 2016 年发起，
最初是为 Atom 编辑器开发的扩展插件，旨在解决当时 Markdown 预览工具功能单一、扩展性不足的问题。
2017 年从 Atom 迁移至 VS Code，新增 PDF 导出、Mermaid 流程图渲染和代码块执行功能，
安装量在年内突破 100 万次[^mpe_github]。MPE 是 Markdown 工具链中功能最全面的插件之一，
尤其适合需要处理复杂格式、追求预览精度或需要多格式导出的用户。
其生态与 VS Code 深度融合，配合 Git 版本控制、AI 辅助插件，可构建高效的内容创作流水线。

