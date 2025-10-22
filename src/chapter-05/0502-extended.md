## 扩展语法

### GitHub Flavored Markdown（GFM）

https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax


#### 表格

```
| 姓名 | 年龄 |
| ---- |------|
| 张三 | 25   |
| 李四 | 52   |
```

>| 姓名 | 年龄 |
>| ---- |------|
>| 张三 | 25   |
>| 李四 | 52   |


```
姓名 | 年龄 | 籍贯
:---:| ----:| :------
张三    | 19  | 暮谷春城
慕容春雪| 101 | 山水相连之地
```

>姓名 | 年龄 | 籍贯
>:---:| ----:| :------
>张三    | 19  | 暮谷春城
>慕容春雪| 101 | 山水相连之地

#### 任务列表

```
- [ ] 软件需求
- [x] 需求分析
```

> - [ ] 软件需求
> - [x] 需求分析

```
- [x] 软件设计
  - [x] 概要设计
  - [ ] 详细设计
- [ ] 软件实现
```

>- [x] 软件设计
>  - [x] 概要设计
>  - [ ] 详细设计
>- [ ] 软件实现

#### 删除线

用 1或2两个`~`包裹

```
~这个~是需要删除的内容，~~哪个~~也是。
```

> ~这个~是需要删除的内容，~~哪个~~也是。

#### 自动链接

```
网址 www.commonmark.org 是 commonmark 的官网。
```

> 网址 www.commonmark.org 是 commonmark 的官网。

```
foo@bar.baz
```

> foo@bar.baz

#### 禁用的 HTML 标签

- \<title>
- \<textarea>
- \<style>
- \<xmp>
- \<iframe>
- \<noembed>
- \<noframes>
- \<script>
- \<plaintext>

#### 数学

~~~
``` math
e=mc^2
```
~~~

``` math
e=mc^2
```


### Pandoc Markdown

https://pandoc.org/MANUAL.html#pandocs-markdown

#### 标题属性

属性格式

{#identifier .class .class key=value key=value}

```
## My Heading {#foo}
### My Heading {-}
#### My Heading {.unnumbered}
```


#### 标题链接

```
### 这是标题1

[这是标题1]
[这是标题1][]
[][这是标题1]
```

>### 这是标题1
>
>[这是标题1]   
>[这是标题1][]   
>[][这是标题1]

#### 围栏代码块

如果代码本身包含一行波浪号（~）或反引号（`），只需在开头和结尾使用更长的一行波浪号或反引号即可。

```
~~~~~~~~~~~~~~~~
~~~~~~~~~~
code including tildes
~~~~~~~~~~
~~~~~~~~~~~~~~~~
```

>~~~~~~~~~~~~~~~~
>~~~~~~~~~~
>code including tildes
>~~~~~~~~~~
>~~~~~~~~~~~~~~~~

~~~
```````````````````
`````
code including tildes
`````
```````````````````
~~~

>```````````````````
>`````
>code including tildes
>`````
>```````````````````

#### 围栏代码块属性

```markdown
~~~~ {#mycode .haskell .numberLines startFrom="100"}
qsort []     = []
qsort (x:xs) = qsort (filter (< x) xs) ++ [x] ++
               qsort (filter (>= x) xs)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

~~~ {#mycode .haskell .numberLines startFrom="100"}
qsort []     = []
qsort (x:xs) = qsort (filter (< x) xs) ++ [x] ++
               qsort (filter (>= x) xs)
~~~

~~~markdown
```haskell
qsort [] = []
```

``` {.haskell}
qsort [] = []
```
~~~

二者相同

~~~markdown
```haskell {.numberLines}
qsort [] = []
```

``` {.haskell .numberLines}
qsort [] = []
```
~~~

二者相同


#### 行快

行块（line block）是指一系列以竖线（|）后接一个空格开头的行。分行结构及其前导空格都会在输出中保留；除此之外，这些行仍会按照 Markdown 格式进行排版。这一功能适用于排版诗歌和地址。

```markdown
| The limerick packs laughs anatomical
| In space that is quite economical.
|    But the good ones I've seen
|    So seldom are clean
| And the clean ones so seldom are comical

| 200 Main St.
| Berkeley, CA 94718
```

```markdown
| The Right Honorable Most Venerable and Righteous Samuel L.
  Constable, Jr.
| 200 Main St.
| Berkeley, CA 94718
```

#### 有序列表

```markdown
#. onw
#. two
```

```markdown
 9)  Ninth
10)  Tenth
11)  Eleventh
       i. subone
      ii. subtwo
     iii. subthree
```

```markdown
(2) Two
(5) Three
```

#### 定义列表

```markdown
Term 1

:   Definition 1

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.
```

Term 1

:   Definition 1

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.


```markdown
Term 1

:   Definition
with lazy continuation.

    Second paragraph of the definition.
```

Term 1

:   Definition
with lazy continuation.

    Second paragraph of the definition.


```markdown
Term 1
  ~ Definition 1

Term 2
  ~ Definition 2a
  ~ Definition 2b
```

#### 带编号的示例列表

```markdown
(@)  My first example will be numbered (1).
(@)  My second example will be numbered (2).

Explanation of examples.

(@)  My third example will be numbered (3).
```

```
(@good)  This is a good example.

As (@good) illustrates, ...
```

```
(@foo) Sample sentence.

Intervening text...

This theory can explain the case we saw earlier (repeated):

(@foo) Sample sentence.
```

#### 结束列表

```
<!-- end of list -->
```

#### 表格

```markdown
  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

Table:  Demonstration of simple table syntax.

```

```
-------     ------ ----------   -------
     12     12        12             12
    123     123       123           123
      1     1          1              1
-------     ------ ----------   -------
```

```markdown
-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.
```

```markdown
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
----------- ------- --------------- -------------------------

: Here's a multiline table without a header.
```

```markdown
: Sample grid table.

+---------------+---------------+--------------------+
| Fruit         | Price         | Advantages         |
+===============+===============+====================+
| Bananas       | $1.34         | - built-in wrapper |
|               |               | - bright color     |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | - cures scurvy     |
|               |               | - tasty            |
+---------------+---------------+--------------------+
```

```markdown
+---------------------+-----------------------+
| Location            | Temperature 1961-1990 |
|                     | in degree Celsius     |
|                     +-------+-------+-------+
|                     | min   | mean  | max   |
+=====================+=======+=======+=======+
| Antarctica          | -89.2 | N/A   | 19.8  |
+---------------------+-------+-------+-------+
| Earth               | -89.2 | 14    | 56.7  |
+---------------------+-------+-------+-------+
```

```markdown
+---------------+---------------+--------------------+
| Right         | Left          | Centered           |
+==============:+:==============+:==================:+
| Bananas       | $1.34         | built-in wrapper   |
+---------------+---------------+--------------------+
```

```markdown
+--------------:+:--------------+:------------------:+
| Right         | Left          | Centered           |
+---------------+---------------+--------------------+
```

```
+---------------+---------------+
| Fruit         | Price         |
+===============+===============+
| Bananas       | $1.34         |
+---------------+---------------+
| Oranges       | $2.10         |
+===============+===============+
| Sum           | $3.44         |
+===============+===============+
```

```
| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |

  : Demonstration of pipe table syntax.
```

```
fruit| price
-----|-----:
apple|2.05
pear|1.37
orange|3.09
```

```
| One | Two   |
|-----+-------|
| my  | table |
| is  | nice  |
```

标题属性

: Here's the caption. {#ident .class key="value"}

#### 元数据块

```
% title
% author(s) (separated by semicolons)
% date
```

```
%
% Author
% My title
%
% June 15, 2006
```

```
% My title
  on multiple lines
```

```
% Author One
  Author Two
% Author One; Author Two
% Author One;
  Author Two
```

#### 页眉页脚

```
% PANDOC(1)
```

will yield a man page with the title PANDOC and section 1.

```
% PANDOC(1) Pandoc User Manuals
```

will also have “Pandoc User Manuals” in the footer.

```
% PANDOC(1) Pandoc User Manuals | Version 4.0
```

#### YAML 元数据块

```markdown
---
title:  'This is the title: it contains a colon'
author:
- Author One
- Author Two
keywords: [nothing, nothingness]
abstract: |
  This is the abstract.

  It consists of two paragraphs.
...
```

```
---
title: The document title
author:
- name: Author One
  affiliation: University of Somewhere
- name: Author Two
  affiliation: University of Nowhere
...
```

引用方法

```markdown
$for(author)$
$if(author.name)$
$author.name$$if(author.affiliation)$ ($author.affiliation$)$endif$
$else$
$author$
$endif$
$endfor$
```

~~~
header-includes:
- |
  ```{=latex}
  \let\oldsection\section
  \renewcommand{\section}[1]{\clearpage\oldsection{#1}}
  ```
~~~

#### 上下标

```
H~2~O is a liquid.  2^10^ is 1024.
```

H~2~O is a liquid.  2^10^ is 1024.


#### 行内代码属性

```
`<$>`{.haskell}
```

#### 下划线

```
[Underline]{.underline}
```

#### 小型大写字母

```
[Small caps]{.smallcaps}
```

#### 高亮

```
[Mark]{.mark}
```

#### 通用原始属性

~~~
```{=ms}
.MYMACRO
blah blah
```
~~~


```
This is `<a>html</a>`{=html}
```

~~~
```{=openxml}
<w:p>
  <w:r>
    <w:br w:type="page"/>
  </w:r>
</w:p>
```
~~~

#### 内部链接

```
See the [Introduction](#introduction).
See the [Introduction].

[Introduction]: #introduction
```

#### 图像属性

```
An inline ![image](foo.jpg){#id .class width=30 height=20px}
and a reference ![image][ref] with attributes.

[ref]: foo.jpg "optional title" {#id .class key=val key2="val 2"}

![](file.jpg){ width=50% }
```

#### 围栏 DIV

```
::::: {#special .sidebar}
Here is a paragraph.

And another.
:::::
```

```
::: Warning ::::::
This is a warning.

::: Danger
This is a warning within a warning.
:::
::::::::::::::::::
```

#### 行内内容属性

```
[This is *some text*]{.class key="val"}
```

#### 注脚

```
Here is a footnote reference,[^1] and another.[^longnote]

[^1]: Here is the footnote.

[^longnote]: Here's one with multiple blocks.

    Subsequent paragraphs are indented to show that they
belong to the previous footnote.

        { some.code }

    The whole paragraph can be indented, or just the first
    line.  In this way, multi-paragraph footnotes work like
    multi-paragraph list items.

This paragraph won't be part of the note, because it
isn't indented.
```

Here is a footnote reference,[^1] and another.[^longnote]

[^1]: Here is the footnote.

[^longnote]: Here's one with multiple blocks.

    Subsequent paragraphs are indented to show that they
belong to the previous footnote.

        { some.code }

    The whole paragraph can be indented, or just the first
    line.  In this way, multi-paragraph footnotes work like
    multi-paragraph list items.

This paragraph won't be part of the note, because it
isn't indented.

#### 行内注解

```
Here is an inline note.^[Inline notes are easier to write, since
you don't have to pick an identifier and move down to type the
note.]
```

Here is an inline note.^[Inline notes are easier to write, since
you don't have to pick an identifier and move down to type the
note.]

#### 引用

```
Blah blah [@doe99; @smith2000; @smith2004].

Blah blah [see @doe99, pp. 33-35 and *passim*; @smith04, chap. 1].

[@smith{ii, A, D-Z}, with a suffix]
[@smith, {pp. iv, vi-xi, (xv)-(xvii)} with suffix here]
[@smith{}, 99 years later]

Smith says blah [-@smith04].

@smith04 says blah.

@smith04 [p. 33] says blah.
```

#### 标注

```
This ==is deleted text.==
```

This ==is deleted text.==

#### 表情符号



#### 标题块

文档顶部

```
Title:   My title
Author:  John Doe
Date:    September 1, 2008
Comment: This is a sample mmd title block, with
         a field spanning multiple lines.
```

#### 预警

```
> [!TIP]
> Helpful advice for doing things better or more easily.
```

>> [!TIP]
>> Helpful advice for doing things better or more easily.


#### 链接属性

```
This is a reference ![image][ref] with MultiMarkdown attributes.

[ref]: https://path.to/image "Image title" width=20px height=30px
       id=myId class="myClass1 myClass2"
```

#### 短上下标

```
x^2 = 4
```

```
Oxygen is O~2.
```













