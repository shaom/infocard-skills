[English](./README.md)

# infocard-skills

面向信息卡生成的开源 Agent Skills 仓库。

`infocard-skills` 是一个小而专注的技能仓库，用来给 Agent 安装可复用的 skill package。当前提供的 `editorial-card-screenshot` 可以把原始内容转成适合截图的 HTML 信息卡，并在需要时输出 PNG。

## 安装什么

当前应该安装的 skill package 是：

- [`skills/editorial-card-screenshot`](./skills/editorial-card-screenshot)

请安装整个目录，而不是只拿某一个文件。

通常需要把下面这些内容一起放进你的 Agent skills 目录：

- `SKILL.md`
- `assets/`
- `references/`
- `scripts/`
- `agents/`，如果你的宿主支持这类元数据

## 如何验证安装成功

安装完成后，可以直接给 Agent 发送下面任一条自然语言请求：

- `Use $editorial-card-screenshot to turn these notes into an editorial info card.`
- `Use $editorial-card-screenshot to make a 3:4 information card from this text.`
- `Use $editorial-card-screenshot and give me both the HTML and PNG.`

如果安装成功，Agent 应该能识别这个 skill，并生成可截图的 HTML；在你要求图片输出时，还会进一步生成 PNG。

## 使用示例

常见自然语言调用方式：

- `Turn this article into an editorial information card.`
- `Make a portrait 3:4 info card from these notes.`
- `Summarize this content as a dense magazine-style card.`
- `Create the HTML only. I do not need the image.`

## PNG 渲染要求

如果要输出 PNG，当前辅助脚本默认依赖本地 Google Chrome：

```text
/Applications/Google Chrome.app/Contents/MacOS/Google Chrome
```

## 仓库结构

```text
skills/
  editorial-card-screenshot/
docs/
examples/
```

## 相关文档

- [`docs/agent-usage.md`](./docs/agent-usage.md)
- [`docs/editorial-card-prompt.md`](./docs/editorial-card-prompt.md)
- [`docs/project-overview.md`](./docs/project-overview.md)
- [`docs/github-metadata.md`](./docs/github-metadata.md)

## License

[MIT](./LICENSE)
