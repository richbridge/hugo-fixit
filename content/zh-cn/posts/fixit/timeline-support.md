---
title: 代码块扩展语法 - 时间线（Timeline）
linkTitle: 时间线支持
date: 2024-07-20T19:25:31+08:00
type: posts
description: 这篇文档将展示如何在 FixIt 中使用代码块扩展语法创建时间线。
categories:
  - Documentation
collections:
  - Content Management
tags:
  - Timeline
  - Diagram
  - Markdown
  - Content
resources:
  - name: featured-image
    src: featured-image.webp
---

<!--more-->

## 基础用法

{{< version 0.3.9 >}}

Timeline 可拆分成多个按照时间戳正序或倒序排列的事件，时间戳和内容是必填项。

一个正序排列的时间线示例：

```timeline
events:
  - timestamp: 2024-07-11
    content: 创建成功
  - timestamp: 2024-07-13
    content: 通过审核
  - timestamp: 2024-07-15
    content: 活动按期开始
```

{{< details "查看源码" false true >}}

````markdown
```timeline
events:
  - timestamp: 2024-07-11
    content: 创建成功
  - timestamp: 2024-07-13
    content: 通过审核
  - timestamp: 2024-07-15
    content: 活动按期开始
```
````

{{< /details >}}

一个倒序排列的时间线示例：

```timeline {reverse=true}
events:
  - timestamp: 2024-07-11
    content: 创建成功
  - timestamp: 2024-07-13
    content: 通过审核
  - timestamp: 2024-07-15
    content: 活动按期开始
```

{{< details "查看源码" false true >}}

````markdown
```timeline {reverse=true}
events:
  - timestamp: 2024-07-11
    content: 创建成功
  - timestamp: 2024-07-13
    content: 通过审核
  - timestamp: 2024-07-15
    content: 活动按期开始
```
````

{{< /details >}}

## 支持动画

Timeline 支持动画效果，可通过 `animation` 参数设置是否开启动画。

```timeline {animation=true}
events:
  - timestamp: 2024-07-11
    content: 创建成功
  - timestamp: 2024-07-13
    content: 通过审核
  - timestamp: 2024-07-15
    content: 活动按期开始
```

{{< details "查看源码" false true >}}

````markdown
```timeline {animation=true}
events:
  - timestamp: 2024-07-11
    content: 创建成功
  - timestamp: 2024-07-13
    content: 通过审核
  - timestamp: 2024-07-15
    content: 活动按期开始
```
````

{{< /details >}}

## ⾃定义节点样式

可根据实际场景⾃定义节点尺⼨、颜⾊、类型或者风格。

```timeline
events:
  - timestamp: 2024-07-19 20:30
    content: 支持自定义风格
    type: primary
    node: dot
  - timestamp: 2024-07-19 20:30
    content: 支持自定义颜色
    color: "#0CBD87"
  - timestamp: 2024-07-19 20:30
    content: 支持自定义尺寸
    size: large
  - timestamp: 2024-07-20 20:30
    content: 默认样式的节点
```

{{< details "查看源码" false true >}}

````markdown {data-open=true}
```timeline
events:
  - timestamp: 2024-07-19 20:30
    content: 支持自定义风格
    type: primary
    node: dot
  - timestamp: 2024-07-19 20:30
    content: 支持自定义颜色
    color: "#0CBD87"
  - timestamp: 2024-07-19 20:30
    content: 支持自定义尺寸
    size: large
  - timestamp: 2024-07-20 20:30
    content: 默认样式的节点
```
````

{{< /details >}}

## ⾃定义时间戳

当内容在垂直⽅向上过⾼时，可将时间戳置于内容之上。

```timeline {placement=top}
events:
  - timestamp: 2024-07-19 20:30
    content: Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sint impedit magni soluta esse placeat facilis porro vitae facere explicabo. Architecto exercitationem accusamus omnis reiciendis beatae et inventore deserunt sequi recusandae.
  - timestamp: 2024-07-19 20:30
    content: Id amet sapiente quod temporibus molestiae? Quasi officia placeat magnam sapiente! Esse iure ipsam quia laboriosam dolorem at dolor est porro placeat, sequi magni maxime vel sint architecto. Placeat, laboriosam?
  - timestamp: 2024-07-19 20:30
    content: Expedita delectus rerum vitae consequuntur quam, tempore fugit debitis voluptatem praesentium maiores dolorem possimus illum adipisci facere veniam voluptatibus aliquam ipsa ducimus nam impedit cumque! Rerum molestias praesentium expedita! Itaque.
```

{{< details "查看源码" false true >}}

````markdown
```timeline {placement=top}
events:
  - timestamp: 2024-07-19 20:30
    content: Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sint impedit magni soluta esse placeat facilis porro vitae facere explicabo. Architecto exercitationem accusamus omnis reiciendis beatae et inventore deserunt sequi recusandae.
  - timestamp: 2024-07-19 20:30
    content: Id amet sapiente quod temporibus molestiae? Quasi officia placeat magnam sapiente! Esse iure ipsam quia laboriosam dolorem at dolor est porro placeat, sequi magni maxime vel sint architecto. Placeat, laboriosam?
  - timestamp: 2024-07-19 20:30
    content: Expedita delectus rerum vitae consequuntur quam, tempore fugit debitis voluptatem praesentium maiores dolorem possimus illum adipisci facere veniam voluptatibus aliquam ipsa ducimus nam impedit cumque! Rerum molestias praesentium expedita! Itaque.
```
````

{{< /details >}}

## 支持 MD/HTML

内容支持 Markdown 或者 HTML 格式。

```timeline {reverse=true}
events:
  - timestamp: 2021-12-18T16:15:22+08:00
    content: "Feat: [LoveIt](https://github.com/dillonzq/LoveIt) => [FixIt](https://github.com/hugo-fixit/FixIt)"
    type: primary
  - timestamp: 2021-12-19T19:48:23+08:00
    content: ":arrow_up: Chore: update 0.2.11"
  - timestamp: 2021-12-19T19:48:23+08:00
    content: "<span class=\"text-secondary\">:(fa-regular fa-comment-dots): Developed for a long time...</span>"
    hideTimestamp: true
    type: secondary
  - timestamp: 2024-01-01T14:54:19+08:00
    content: ":bookmark: Chore(release): 0.3.0"
    type: success
  - timestamp: 2024-05-20T14:54:19+08:00
    content: "<span class=\"text-secondary\">:(fa-regular fa-comment-dots): Half a year later...</span>"
    hideTimestamp: true
    type: secondary
  - timestamp: 2024-07-20T22:28:19+08:00
    content: ":tada: Feat: add timeline support for code blocks"
    type: danger
```

{{< details "查看源码" false true >}}

````markdown {data-open=true}
```timeline {reverse=true}
events:
  - timestamp: 2021-12-18T16:15:22+08:00
    content: "Feat: [LoveIt](https://github.com/dillonzq/LoveIt) => [FixIt](https://github.com/hugo-fixit/FixIt)"
    type: primary
  - timestamp: 2021-12-19T19:48:23+08:00
    content: ":arrow_up: Chore: update 0.2.11"
  - timestamp: 2021-12-19T19:48:23+08:00
    content: "<span class=\"text-secondary\">:(fa-regular fa-comment-dots): Developed for a long time...</span>"
    hideTimestamp: true
    type: secondary
  - timestamp: 2024-01-01T14:54:19+08:00
    content: ":bookmark: Chore(release): 0.3.0"
    type: success
  - timestamp: 2024-05-20T14:54:19+08:00
    content: "<span class=\"text-secondary\">:(fa-regular fa-comment-dots): Half a year later...</span>"
    hideTimestamp: true
    type: secondary
  - timestamp: 2024-07-20T22:28:19+08:00
    content: ":tada: Feat: add timeline support for code blocks"
    type: danger
```
````

{{< /details >}}

## 多种格式支持

数据支持 `JSON`、`YAML`、`TOML` 三种格式。

一个 `JSON` 格式的时间线示例：

```timeline
{
  "events": [
    {
      "timestamp": "2024-07-11",
      "content": "创建成功"
    },
    {
      "timestamp": "2024-07-13",
      "content": "通过审核"
    },
    {
      "timestamp": "2024-07-15",
      "content": "活动按期开始"
    }
  ]
}
```

{{< details "查看源码" false true >}}

````markdown {data-open=true}
```timeline
{
  "events": [
    {
      "timestamp": "2024-07-11",
      "content": "创建成功"
    },
    {
      "timestamp": "2024-07-13",
      "content": "通过审核"
    },
    {
      "timestamp": "2024-07-15",
      "content": "活动按期开始"
    }
  ]
}
```
````

{{< /details >}}

一个 `YAML` 格式的时间线示例：

```timeline
events:
  - timestamp: 2024-07-11
    content: 创建成功
  - timestamp: 2024-07-13
    content: 通过审核
  - timestamp: 2024-07-15
    content: 活动按期开始
```

{{< details "查看源码" false true >}}

````markdown
```timeline
events:
  - timestamp: 2024-07-11
    content: 创建成功
  - timestamp: 2024-07-13
    content: 通过审核
  - timestamp: 2024-07-15
    content: 活动按期开始
```
````

{{< /details >}}

一个 `TOML` 格式的时间线示例：

```timeline
[[events]]
timestamp = "2024-07-11"
content = "创建成功"

[[events]]
timestamp = "2024-07-13"
content = "通过审核"

[[events]]
timestamp = "2024-07-15"
content = "活动按期开始"
```

{{< details "查看源码" false true >}}

````markdown {data-open=true}
```timeline
[[events]]
timestamp = "2024-07-11"
content = "创建成功"

[[events]]
timestamp = "2024-07-13"
content = "通过审核"

[[events]]
timestamp = "2024-07-15"
content = "活动按期开始"
```
````

{{< /details >}}

## 参数配置

### Timeline

| 参数      | 说明                         | 类型    | 可选值                 | 默认值 |
| :-------- | :--------------------------- | :------ | :--------------------- | :----- |
| reverse   | 指定节点排序方向，默认为正序 | boolean | -                      | false  |
| placement | 时间戳位置                   | string  | top / bottom           | bottom |
| animation | 是否开启动画                 | boolean | -                      | false  |
| size      | 节点尺寸                     | string  | small / medium / large | medium |
| node      | 节点风格                     | string  | circle / dot           | circle |
| width     | 容器宽度                     | string  | -                      | -      |
| height    | 容器高度                     | string  | -                      | -      |
| class     | 容器类名                     | string  | -                      | -      |

### Timeline Events

|      | 参数          | 说明           | 类型    | 可选值                                                  | 默认值 |
| :--: | :------------ | :------------- | :------ | :------------------------------------------------------ | :----- |
| 必需 | timestamp     | 时间戳         | string  | -                                                       | -      |
| 必需 | content       | 内容           | string  | -                                                       | -      |
| 可选 | hideTimestamp | 是否隐藏时间戳 | boolean | -                                                       | false  |
| 可选 | placement     | 时间戳位置     | string  | top / bottom                                            | bottom |
| 可选 | color         | 节点颜色       | string  | hsl / hsv / hex / rgb                                   | -      |
| 可选 | type          | 节点类型       | string  | primary / secondary / success / info / warning / danger | -      |
| 可选 | size          | 节点尺寸       | string  | small / medium / large                                  | medium |
| 可选 | node          | 节点风格       | string  | circle / dot                                            | circle |