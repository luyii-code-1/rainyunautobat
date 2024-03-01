@echo off
echo 访问https://chat.openai.com/share/5abe3af6-b740-4b94-b25b-6cdf7e628def获取详细信息,将“##”替换为你的API密钥
echo 已打开API密钥获取网址，安装完成后请移除本行
start https://app.rainyun.com/account/settings
setlocal enabledelayedexpansion
set "url=https://api.v2.rainyun.com/user/reward/tasks"
set "data={""task_name"": ""每日签到""}"
curl -k -X POST "%url%" ^
-H "x-api-key: #替换为你的API密钥#" ^
-H "User-Agent: Apifox/1.0.0 (https://apifox.com)" ^
-H "Content-Type: application/json" ^
-H "Accept: */*" ^
-H "Cache-Control: no-cache" ^
-H "Host: api.v2.rainyun.com" ^
-H "Accept-Encoding: gzip, deflate, br" ^
-H "Connection: keep-alive" ^
-d "%data%"
echo 签到完成
timeout -t 86400
endlocal
%0

