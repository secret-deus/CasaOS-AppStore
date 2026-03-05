# OpenClaw 配置指引

## 1. 进入容器并启动配置向导
在容器终端执行：

```bash
node /app/dist/index.js config
```

![启动配置向导](image.png)

## 2. 配置模型提供方（Provider）
1. 选择 `local`  
![选择 local](image-1.png)

2. 选择 `model`  
![选择 model](image-2.png)

3. 选择 `custom provider`  
![选择 custom provider](image-3.png)

## 3. 填写模型参数
1. 输入 `baseurl`  
![输入 baseurl](image-4.png)

2. 输入 `apikey`  
![输入 apikey](image-5.png)

3. 选择 API 格式（一般选择 OpenAI；如果是 CodingPlan，选择 Anthropic）  
![选择 API 格式](image-6.png)

4. 输入你要使用的 `model id`（多个模型可用英文逗号 `,` 分隔）  
![输入 model id](image-7.png)

## 4. 配置消息通道（Channel）
1. 选择 `channel`  
![选择 channel](image-8.png)

2. 选择你的 channel，并填入对应凭证

### Telegram 示例
1. 在 Telegram 中与 `@BotFather` 对话，发送 `/newbot` 创建 bot，并获取 `bot token`  
![创建 Telegram Bot](image-9.png)

2. 在配置中填入 `bot token`  
![填写 bot token](image-10.png)
![完成 channel 配置](image-11.png)

## 5. 访问服务
配置完成后访问：

```text
https://<ip>:18789?token=casaos
```

## 6. 出现 `paired required` 时的处理
再次进入容器终端，执行：

```bash
node /app/dist/index.js devices list
```

如果出现未配对设备，执行：

```bash
node /app/dist/index.js devices approve <request_id>
```
