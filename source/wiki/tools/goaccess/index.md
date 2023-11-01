---
layout: wiki
wiki: tools
date: 2023-11-01 21:00
categories: [小工具]
title: goaccess日志分析工具
description: 访问日志分析工具
keywords: 访问日志,goaccess
permalink: /wiki/tools/goaccess/
cover: /asset/wiki/delay/cover.jpg
---

goaccess是一个强大的访问日志分析工具，它可以帮助你分析、监控、并报告Web服务器的访问日志。

## 1. 查看当前操作系统版本

```bash
cat /etc/issue
```

{% image /asset/tools/系统信息.png %}
<!--more-->
## 2. Linux系统使用yum安装

```bash
yum install goaccess
```
## 3. Ubuntu系统使用apt安装
```bash
apt-get install goaccess
```
## 4. alpine系统使用apk安装
```bash
apk add goaccess
```

## 5. 源码编译安装

```bash
# 下载
git clone https://github.com/allinurl/goaccess.git

# 编译
cd goaccess
make

# 安装
sudo make install
```
## 6. 验证安装
```bash
# 查看版本
goaccess --version
```
> 显示如下信息则表示安装成功

{% image /asset/tools/version.png %}
## 7. 使用

```bash
# 显示帮助信息
goaccess --help

# 分析访问日志
goaccess access.log

# 分析访问日志并生成HTML报告
goaccess access.log --log-format=COMBINED --html-report=report.html
```
## 8. 常用参数

```bash
# 显示帮助信息
goaccess --help

# 分析访问日志
goaccess access.log
```
> 运行goaccess [日志地址] (支持常见的服务器比如`apache` 、`nginx`等)
{% image /asset/tools/info.png %}
{% note 使用默认格式查看日志(按空格然后再按回车`Enter`)%}
> 剩下的功能请自行查看帮助文档

```bash
# 分析访问日志并生成HTML报告
goaccess access.log --log-format=COMBINED --html-report=report.html

# 分析访问日志并生成JSON报告
goaccess access.log --log-format=COMBINED --json-report=report.json

# 分析访问日志并生成XML报告
goaccess access.log --log-format=COMBINED --xml-report=report.xml

# 分析访问日志并生成CSV报告
goaccess access.log --log-format=COMBINED --csv-report=report.csv
# 分析访问日志并生成HTML报告
goaccess access.log --log-format=COMBINED --html-report=report.html

# 分析访问日志并生成JSON报告
goaccess access.log --log-format=COMBINED --json-report=report.json

# 分析访问日志并生成XML报告
goaccess access.log --log-format=COMBINED --xml-report
```