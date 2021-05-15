# 厦门大学研究生学位论文 LaTeX 模板

本模板基于 [BIT-Thesis v1.5](https://github.com/BIT-thesis/LaTeX-template) 按照[《厦门大学研究生学位论文规范》](https://gs.xmu.edu.cn/info/1179/1190.htm)和[《厦门大学信息学院研究生学位论文写作指南》](https://informatics.xmu.edu.cn/info/1047/4651.htm)进行了修改。本模板需要安装 TeX Live，并用 XeLaTeX 进行编译。

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=2 orderedList=false} -->

<!-- code_chunk_output -->

- [厦门大学研究生学位论文 LaTeX 模板](#厦门大学研究生学位论文-latex-模板)
  - [使用须知](#使用须知)
  - [更新日志](#更新日志)
  - [已知 Bug 汇总](#已知-bug-汇总)

<!-- /code_chunk_output -->

## 使用须知

- 目前的测试人员都在使用 2020 版的`LaTeX`，如果没有版本的要求建议都在 2020 版下编译。

## 更新日志

### 2021.05.14

- 取消页眉中英文自动大写的设定。
- 在摘要、目录和致谢页面的页眉文字的中间添加空格，保持跟 Word 模板一致。另外，添加了一个模板选项 `compact`，可以去掉前面提到的空格。

### 2021.05.13

- 将英文摘要里的 `Key Words` 修正为 `Keywords`
- 调整章节标题段前段后值。去掉章标题段后的弹性间隔，防止出现某些情况下章标题与一级标题之间间距过大的情况。

### 2021.05.12

- 调整章节标题段前段后值。由于信息学院给的 Word 模板有问题。模板中的章节标题段落样式使用了对齐到网格。导致实际的段前段后值与指南中规定的值不一致。因此 cls 文件无法按照指南中规定给的指定段前段后值进行设置。为了保持与 Word 模板一致，只能人工试出一组段前段后值。如果有更合适的值请在[这里](https://github.com/zoam/xmu-thesis-grd/issues/8)进行讨论。
- 调整章节标题中的英文字体改为 Arial。Word 模板中用英文字体用的是黑体。由于不知道在 LaTeX 中要如何设置英文字体为黑体，就将英文字体暂时改为了 Arial。貌似也看不太出来区别？

### 2021.05.10

- 支持在 Overleaf 上编译。理论上，在 Linux 系统上编译也不再需要自己先去下载中文字体文件。中文字体文件已经包含在项目根目录下。
- 添加缺失的学位论文答辩委员会名单页。修改名单页需要先修改 pdf_files 文件夹里的 name_list.doc 中的内容，再手动导出为 pdf 文件。
- 修改在学期间完成的相关学术成果页样式。

### 2021.05.06

- 调整脚注样式。

### 2021.05.04

- 调整中英文摘要的标题（包括段前、段后等）及段落样式（包括行距、字号等）。
- 调整中英文目录的标题及段落样式。
- 调整章节标题样式。
- 调整页眉位置。
- 调整页面边距。
- 调整参考文献段落样式。
- 调整图表题注样式。
- 以上修改后的具体样式见`doc`文件夹里的《厦门大学信息学院研究生学位论文写作指南》。
- 去掉不需要的图索引和表索引等部分内容。

### 2021.01.24

- 修改图片、公式和表格的编号规则为`(章节号.公式号)`。

  ```latex
  %% 定公式、图、表编号格式
  \renewcommand\theequation{\arabic{chapter}.\arabic{equation}}
  \renewcommand\thefigure{\arabic{chapter}.\arabic{figure}}
  \renewcommand\thetable{\arabic{chapter}.\arabic{table}}
  ```

### 2020.10.15

- 加入直接使用生成好的`pdf`文件的选项，提供`pdf`选项直接由官方的`word`格式生成`著作权声明`等。

  ```latex
  %% 若要使用由word转pdf生成的官方样式，则引入主题时配置：
  \documentclass[twoside, doctor, pdf]{xmu-thesis-grd}
  %% 否则默认配置即可：
  \documentclass[twoside, master]{xmu-thesis-grd}
  ```

- 为首页加入`pdf`书签。

## 已知 Bug 汇总

- 英文目录中如果标题过长（大于一行）且出现断字现象的时候，该标题的页码有可能会跑到下一行的左边。目前无法做到自动处理，只能在原本需要断字的地方手动插入`-\linebreak`。详见[这里](https://github.com/zoam/xmu-thesis-grd/issues/9)的讨论。
- 章节标题的段前段后设置可能仍存在问题。无法做到与 Word 模板完全一致，只能做到近似。如果有更合适的值请在[这里](https://github.com/zoam/xmu-thesis-grd/issues/8)进行讨论。
- 在 2019 版本`texlive`中使用`\RequirePackage{gbt7714}`会报错，建议直接通过 bst 文件引用，bst 下载地址为[https://github.com/CTeX-org/gbt7714-bibtex-style/blob/master/gbt7714-numerical.bst](https://github.com/CTeX-org/gbt7714-bibtex-style/blob/master/gbt7714-numerical.bst)。
