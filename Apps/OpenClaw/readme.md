# OpenClaw 配置指引

## 1. 进入容器并启动配置向导

1. ssh连接zimaos后命令行进入容器：
```bash
docker exec -it openclaw bash
```

2. 在容器终端执行：

```bash
node /app/dist/index.js config
```

![启动配置向导](image.png)
3. 按提示在 `Where will the Gateway run?` 选择 `Local (this machine)`。

## 2. 配置模型提供方（Provider）
1. 在 `Select sections to configure` 中进入 `Model`  
![进入模型配置入口](image-1.png)

2. 在 `Model/auth provider` 中选择 `custom provider`  
![选择 custom provider](image-2.png)

## 3. 填写模型参数
1. 输入 `baseurl`  
![输入 baseurl](image-3.png)

2. 输入 `apikey`  
![输入 apikey](image-4.png)

3. 选择 API 格式（一般选择 OpenAI；如果是 CodingPlan，选择 Anthropic）  
![选择 API 格式](image-5.png)

4. 输入你要使用的 `model id`（多个模型可用英文逗号 `,` 分隔）  
![输入 model id](image-6.png)

## 4. 配置消息通道（Channel）
1. 在 `Select sections to configure` 中选择 `Channels`  
![选择 channels 分组](image-7.png)

2. 选择你的 channel  
![选择 channel](image-8.png)

3. 填入对应凭证

### Telegram 示例
1. 在 Telegram 中与 `@BotFather` 对话，发送 `/newbot` 创建 bot，并获取 `bot token`  
![创建 Telegram Bot](image-9.png)

2. 在配置中填入 `bot token`  
![填写 bot token](image-10.png)
![确认 Telegram 凭证](image-11.png)

3. 当系统询问 `Configure DM access policies now? (default: pairing)` 时，选择 `Yes`，默认使用配对模式。  
![选择配对模式入口](screenshot-1.png)

4. 在 `Telegram DM policy` 中选择 `Pairing (recommended)`。  
![选择 Pairing](screenshot-2.png)

5. 返回 `Select sections to configure` 后，选择 `Continue (Done)` 完成 Telegram 配置。  
![选择 Continue (Done)](screenshot-3.png)

6. 完成上述设置后，在终端执行以下命令，将 `openclaw` 与你的 Bot 绑定：

```bash
openclaw pairing approve telegram <你的配对码>
```

将命令中的 `<你的配对码>` 替换为 Telegram 中显示的配对码，看到成功提示即表示配对完成。

## 5. 访问服务
配置完成后访问：

```text
https://<ip>:24190?token=casaos
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
