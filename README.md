# 厦门大学研究生学位论文 LaTeX 模板

本模板是基于 [BIT-Thesis v1.5](https://github.com/BIT-thesis/LaTeX-template) 按照[厦门大学研究生学位论文规范](https://gs.xmu.edu.cn/info/1179/1190.htm)进行了修改。Linux 系统可能会缺字体，需要自行下载。建议直接把 Windows 系统下的 Fonts 文件夹里的字体全部复制过来。

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [厦门大学研究生学位论文 LaTeX 模板](#厦门大学研究生学位论文-latex-模板)
  - [更新日志](#更新日志)
    - [2021.01.24](#20210124)
    - [2020.10.15](#20201015)

<!-- /code_chunk_output -->

## 更新日志

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
