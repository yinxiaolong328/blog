---
layout: wiki #使用wiki公共模版
wiki: delay #项目名
date: 2023-10-18 21:00
categories: [部署,docker]
title: 开始之前
---

## 说明
食用本文档前，请确保所用机器装有 `docker` 服务以及`docker-compose` 工具。以下命令用于检查服务是否存在（`linux`下）
```bash
docker -v
```
```bash
docker-compose -v
```
如果显示以下一行文字，则请继续往下走，没有请自行安装
![](/asset/wiki/delay/docker.png)

## 安装
请在一个干净的目录，使用 `git` 命令拉取代码
```bash
git clone https://github.com/yinxiaolong328/blog.git
```
拉下代码之后
```bash
cd blog
```
执行命令
```bash
docker-compose up
```
显示以下内容表示启动成功!
![](/asset/wiki/delay/start.png)