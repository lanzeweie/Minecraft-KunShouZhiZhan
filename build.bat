@echo off
chcp 65001 >nul
echo 《困兽之战》 
echo github: https://github.com/lanzeweie/Minecraft-KunShouZhiZhan
echo 小黑盒：你今天很怠惰呢 UID：13475401
echo 版本：4.0.0
set zipname="困兽之战.zip"

if exist %zipname% del %zipname%

tar -a -c -f %zipname% pack.mcmeta data

echo ✔ 数据包打包已完成：%zipname%
echo 按下任意键关闭窗口...
pause >nul
