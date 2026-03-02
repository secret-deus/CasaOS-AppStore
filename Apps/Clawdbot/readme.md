进入容器终端

执行 node /app/dist/index.js config
![alt text](image.png)
-> local
![alt text](image-1.png)
-> model
![alt text](image-2.png)
-> custom provider
![alt text](image-3.png)
输入 baseurl
![alt text](image-4.png)
输入apikey
![alt text](image-5.png)
选择api格式 一般openai格式如果是codingplan为authropic格式
![alt text](image-6.png)
输入你想使用的modelid，不止一个用,分隔



![alt text](image-7.png)
-> channel
![alt text](image-8.png)
选择你的channel，填入对应凭证即可


访问https://ip:18789?token=casaos

如果出现paired required

则再次进入容器终端

执行node /app/dist/index.js devices list

如果出现未配对设备

执行node /app/dist/index.js devices approve <request_id>